import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../services/progress_service.dart';
import '../widgets/avatar_display.dart';
import '../widgets/nav_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final TextEditingController _nameController;
  late String _selectedAvatarId;
  bool _isLoading = false;

  final AuthService _authService = AuthService.instance;

  @override
  void initState() {
    super.initState();
    final user = _authService.currentUser;
    _nameController = TextEditingController(text: user?.displayName ?? '');
    _selectedAvatarId =
        ProgressService.instance.userProfileNotifier.value.avatarId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _saveProfile() async {
    // Esconde o teclado para uma melhor experiência
    FocusScope.of(context).unfocus();

    if (_nameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('O nome não pode ficar em branco.'),
          backgroundColor: Colors.red));
      return;
    }

    setState(() => _isLoading = true);
    final success = await _authService.updateUserProfile(
      newName: _nameController.text.trim(),
      newAvatarId: _selectedAvatarId,
    );

    if (mounted) {
      setState(() => _isLoading = false);
      if (success) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Perfil atualizado com sucesso!'),
            backgroundColor: Colors.green));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Erro ao atualizar o perfil.'),
            backgroundColor: Colors.red));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // A lista de avatares é importada diretamente do ficheiro avatar_display.dart
    // para garantir consistência.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          // Seletor de Avatar
          Text('Escolha seu Avatar',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: avatarIcons.entries.map((entry) {
              final id = entry.key;
              final isSelected = id == _selectedAvatarId;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedAvatarId = id;
                  });
                },
                child: Opacity(
                  opacity: isSelected ? 1.0 : 0.6,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: isSelected
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 3),
                          )
                        : null,
                    child: AvatarDisplay(avatarId: id, size: 70),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 40),

          // Campo de Nome
          Text('Nome de Usuário',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Como você quer ser chamado?',
            ),
          ),
          const SizedBox(height: 40),

          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : NavButton(
                  title: 'SALVAR ALTERAÇÕES',
                  onPressed: _saveProfile,
                ),
        ],
      ),
    );
  }
}
