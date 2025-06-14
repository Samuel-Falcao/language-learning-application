import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LojaScreen extends StatefulWidget {
  const LojaScreen({Key? key}) : super(key: key);

  @override
  State<LojaScreen> createState() => _LojaScreenState();
}

class _LojaScreenState extends State<LojaScreen> {
  bool _isComprando = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _comprarItem(String itemId, int preco) async {
    final user = _auth.currentUser;
    if (user == null) {
      _showSnackbar("Você precisa estar logado para comprar.", isError: true);
      return;
    }

    setState(() => _isComprando = true);

    final userDocRef = _firestore.collection('users').doc(user.uid);

    try {
      final bool sucesso =
          await _firestore.runTransaction<bool>((transaction) async {
        final snapshot = await transaction.get(userDocRef);
        final data = snapshot.data();
        if (data == null) {
          throw Exception("Usuário não encontrado.");
        }

        final int gemasAtuais = data['gems'] ?? 0;

        if (gemasAtuais >= preco) {
          Map<String, dynamic> updates = {'gems': FieldValue.increment(-preco)};

          if (itemId == 'streak_freeze') {
            updates['inventory.streak_freeze'] = FieldValue.increment(1);
          } else if (itemId == 'xp_boost') {
            // Bônus de XP válido por 15 minutos a partir da compra.
            final expiryTime = Timestamp.fromDate(
                DateTime.now().add(const Duration(minutes: 15)));
            updates['activeBoosts.xpBoostExpiry'] = expiryTime;
          }

          transaction.update(userDocRef, updates);
          return true;
        } else {
          return false;
        }
      });

      if (mounted) {
        if (sucesso) {
          _showSnackbar("Item comprado e ativado!");
        } else {
          _showSnackbar("Gemas insuficientes!", isError: true);
        }
      }
    } catch (e) {
      _showSnackbar("Ocorreu um erro na comunicação. Tente novamente.",
          isError: true);
    } finally {
      if (mounted) {
        setState(() => _isComprando = false);
      }
    }
  }

  void _showSnackbar(String message, {bool isError = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: isError ? Colors.redAccent[700] : Colors.green[600],
        content: Row(
          children: [
            Icon(isError ? Icons.warning_amber_rounded : Icons.check_circle,
                color: Colors.white),
            const SizedBox(width: 16),
            Expanded(
              child: Text(message,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;

    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Loja')),
        body: const Center(child: Text("Faça login para acessar a loja.")),
      );
    }

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: _firestore.collection('users').doc(user.uid).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
              appBar: AppBar(title: const Text('Loja')),
              body: const Center(child: CircularProgressIndicator()));
        }
        if (!snapshot.hasData || snapshot.data?.data() == null) {
          return Scaffold(
              appBar: AppBar(title: const Text('Loja')),
              body: const Center(
                  child: Text("Não foi possível carregar os dados.")));
        }

        final userData = snapshot.data!.data()!;
        final int gemas = userData['gems'] ?? 0;
        final Map<String, dynamic> inventario = userData['inventory'] ?? {};
        final Map<String, dynamic> activeBoosts =
            userData['activeBoosts'] ?? {};

        return Scaffold(
          appBar: AppBar(
            title: const Text('Loja'),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Center(
                  child: Chip(
                    backgroundColor: Colors.orange.shade800,
                    avatar: const Icon(Icons.monetization_on,
                        color: Colors.white, size: 18),
                    label: Text(
                      gemas.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Text(
                'Itens de Poder',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildLojaItem(
                context: context,
                icon: Icons.shield,
                titulo: 'Congelador de Ofensiva',
                descricao: 'Salve sua ofensiva por um dia de inatividade.',
                preco: 100, // Custo reduzido
                itemId: 'streak_freeze',
                cor: Colors.blue.shade600,
                quantidadeNoInventario: inventario['streak_freeze'] ?? 0,
              ),
              const SizedBox(height: 10),
              _buildLojaItem(
                context: context,
                icon: Icons.bolt, // Novo ícone
                titulo: 'Dose Dupla de XP',
                descricao: 'Ganhe o dobro de XP por 15 minutos.',
                preco: 100,
                itemId: 'xp_boost',
                cor: Colors.purple.shade600,
                activeBoosts: activeBoosts,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLojaItem({
    required BuildContext context,
    required IconData icon,
    required String titulo,
    required String descricao,
    required int preco,
    required String itemId,
    required Color cor,
    int? quantidadeNoInventario,
    Map<String, dynamic>? activeBoosts,
  }) {
    // Verifica se há um bônus de XP ativo
    bool isXpBoostActive = false;
    if (itemId == 'xp_boost' && activeBoosts != null) {
      final Timestamp? boostExpiry = activeBoosts['xpBoostExpiry'];
      if (boostExpiry != null && boostExpiry.toDate().isAfter(DateTime.now())) {
        isXpBoostActive = true;
      }
    }

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: cor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(descricao,
                      style: Theme.of(context).textTheme.bodyMedium),
                  if (quantidadeNoInventario != null &&
                      quantidadeNoInventario > 0) ...[
                    const SizedBox(height: 8),
                    Chip(
                      label: Text('Você possui: $quantidadeNoInventario'),
                      backgroundColor: Colors.grey.shade200,
                    ),
                  ],
                  if (isXpBoostActive) ...[
                    const SizedBox(height: 8),
                    Chip(
                      label: const Text('ATIVO'),
                      backgroundColor: Colors.purple.shade100,
                      labelStyle: TextStyle(color: Colors.purple.shade900),
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(width: 16),
            _buildBotaoPreco(itemId, preco, isXpBoostActive),
          ],
        ),
      ),
    );
  }

  Widget _buildBotaoPreco(String itemId, int preco, bool isBoostActive) {
    // Desabilita o botão se o bônus de XP já estiver ativo
    final bool isButtonDisabled = _isComprando || isBoostActive;

    return InkWell(
      onTap: isButtonDisabled ? null : () => _comprarItem(itemId, preco),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color:
              isButtonDisabled ? Colors.grey.shade400 : Colors.orange.shade700,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.monetization_on, color: Colors.white, size: 18),
            const SizedBox(width: 6),
            Text(
              preco.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
