import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../utils/app_routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late VideoPlayerController _controller;
  bool _videoInitialized = false;

  late AnimationController _logoAnimationController;
  late Animation<double> _logoScaleAnimation;

  late AnimationController _textAnimationController;
  late Animation<double> _textFadeAnimation;

  bool _showLoading = false;

  @override
  void initState() {
    super.initState();

    // Inicializa o vídeo se não for web
    if (!kIsWeb) {
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
          debugPrint("Erro ao inicializar vídeo: $error");
          if (mounted) {
            setState(() {
              _videoInitialized = false;
            });
          }
        });
    }

    // Animação do logo (zoom in)
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _logoAnimationController, curve: Curves.easeOutBack),
    );

    // Animação do texto (fade in)
    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _textFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _textAnimationController, curve: Curves.easeIn),
    );

    // Começa animação da logo
    _logoAnimationController.forward();

    // Quando animação da logo terminar, dispara animação do texto e mostra loading
    _logoAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _textAnimationController.forward();
        setState(() {
          _showLoading = true;
        });

        // Depois de 2 segundos com o texto e loading, navega pra Login
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            Navigator.of(context).pushReplacementNamed(AppRoutes.login);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    if (_videoInitialized && !kIsWeb) {
      _controller.dispose();
    }
    _logoAnimationController.dispose();
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fundo vídeo ou branco
          if (_videoInitialized && !kIsWeb)
            FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            )
          else
            Container(color: Colors.white),

          // Conteúdo animado
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo com zoom
                ScaleTransition(
                  scale: _logoScaleAnimation,
                  child:
                      Image.asset('assets/images/logo_falae.png', width: 150),
                ),

                const SizedBox(height: 20),

                // Texto com fade, só aparece depois da logo animar
                FadeTransition(
                  opacity: _textFadeAnimation,
                  child: Column(
                    children: [
                      const Text(
                        'Falaê',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Seu portal para novos idiomas.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Loading na parte inferior centralizada
          if (_showLoading)
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.teal,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
