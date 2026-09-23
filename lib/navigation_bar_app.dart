import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/pages/home_page.dart';
import 'package:tp1_sport_yl/pages/detail_sport_page.dart';
import 'package:tp1_sport_yl/pages/ajout_sport_page.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Navigation());
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const DetailSportPage(),
    const AjoutSportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 146, 5, 240),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Accueil',
            tooltip: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz),
            label: 'Détail',
            tooltip: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'Ajout',
            tooltip: '',
          ),
        ],
      ),
    );
  }
}
