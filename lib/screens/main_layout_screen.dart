import 'package:flutter/material.dart';
import '../services/navigation_service.dart';
import 'progress_screen.dart';
import 'profile_screen.dart';
import 'quiz_language_list_screen.dart';
import 'phrase_language_list_screen.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    NavigationService.instance.selectedTabNotifier.addListener(_onTabChange);
  }

  @override
  void dispose() {
    NavigationService.instance.selectedTabNotifier.removeListener(_onTabChange);
    super.dispose();
  }

  void _onTabChange() {
    if (mounted &&
        _selectedIndex !=
            NavigationService.instance.selectedTabNotifier.value) {
      setState(() {
        _selectedIndex = NavigationService.instance.selectedTabNotifier.value;
      });
    }
  }

  void _onItemTapped(int index) {
    NavigationService.instance.changeTab(index);
  }

  static const List<Widget> _widgetOptions = <Widget>[
    ProgressScreen(),
    QuizLanguageListScreen(),
    PhraseLanguageListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // A AppBar foi REMOVIDA daqui.
    // Agora, este Scaffold apenas gerencia o corpo da tela (o IndexedStack)
    // e a barra de navegação inferior. Cada tela na lista _widgetOptions
    // será um Scaffold completo e terá sua própria AppBar.
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart_outlined),
              activeIcon: Icon(Icons.show_chart),
              label: 'Progresso'),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined),
              activeIcon: Icon(Icons.quiz),
              label: 'Quiz'),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              activeIcon: Icon(Icons.article),
              label: 'Frases'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Perfil'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
