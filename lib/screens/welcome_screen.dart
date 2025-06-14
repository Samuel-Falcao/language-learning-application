import 'package:flutter/foundation.dart'; // Importante para verificar a plataforma
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../utils/app_routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late VideoPlayerController _controller;
  bool _videoInitialized = false;

  @override
  void initState() {
    super.initState();
    // Apenas inicializa o vídeo se NÃO estiver na web
    if (!kIsWeb) {
      initializeVideoPlayer();
    }
  }

  void initializeVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/background.mp4')
      ..initialize().then((_) {
        if (mounted) {
          setState(() {
            _videoInitialized = true;
          });
          _controller.play();
          _controller.setLooping(true);
        }
      }).catchError((error) {
        debugPrint("Erro ao inicializar o vídeo: $error, usando fundo branco.");
        if (mounted) {
          setState(() {
            _videoInitialized = false;
          });
        }
      });
  }

  @override
  void dispose() {
    // Apenas faz dispose do controller se ele foi inicializado
    if (_videoInitialized && !kIsWeb) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Mostra o vídeo se estiver inicializado e não for web.
          // Caso contrário, mostra um fundo de cor sólida.
          if (_videoInitialized && !kIsWeb)
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            )
          else
            Container(
              color: Colors.white, // Fundo branco para a web
            ),

          // Conteúdo sobreposto ao vídeo/fundo
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(flex: 2),
                Text(
                  'Falaê',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Seu portal para novos idiomas.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                const Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.login);
                        },
                        child: const Text('ENTRAR'),
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          side: BorderSide(
                              color: Theme.of(context).primaryColor),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.registration);
                        },
                        child: const Text('CRIAR CONTA'),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
