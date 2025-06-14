import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/main_layout_screen.dart';
import 'screens/lesson_list_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/complete_phrase_screen.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/loja_screen.dart'; 
import 'utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Falaê',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.teal, accentColor: Colors.amberAccent),
        scaffoldBackgroundColor: const Color(0xFFF5F5F7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F5F7),
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.teal.shade700,
          unselectedItemColor: Colors.grey.shade400,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 5,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(vertical: 14),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        cardTheme: CardTheme(
          elevation: 1,
          shadowColor: Colors.grey.withOpacity(0.2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black87),
          headlineSmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.welcome,
      routes: {
        AppRoutes.welcome: (ctx) => const WelcomeScreen(),
        AppRoutes.login: (ctx) => const LoginScreen(),
        // --- CORREÇÃO APLICADA AQUI ---
        AppRoutes.registration: (ctx) => const RegistrationScreen(),
        AppRoutes.main: (ctx) => const MainLayoutScreen(),
        AppRoutes.lessonList: (ctx) => const LessonListScreen(),
        AppRoutes.editProfile: (ctx) => const EditProfileScreen(),
        AppRoutes.quiz: (ctx) => const QuizScreen(),
        AppRoutes.completePhrase: (ctx) => const CompletePhraseScreen(),
        AppRoutes.loja: (ctx) => const LojaScreen(),
      },
    );
  }
}
