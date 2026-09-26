import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/pages/ajout_sport_page.dart';
import 'package:tp1_sport_yl/widgets/sport_card.dart';
import 'package:tp1_sport_yl/models/sport.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Sport> sports = [
    Sport(
      nom: 'Football',
      description: 'Sport collectif joué avec un ballon entre deux équipes',
      dureeMatch: 90,
      image: 'assets/images/football.jpg',
      competitions: 'Ligue des champions',
      competences: ['S\'échauffer', 'Faire des passes précises'],
    ),
    Sport(
      nom: 'Badminton',
      description: 'Sport de raquette le plus rapide au monde',
      dureeMatch: 60,
      image: 'assets/images/badminton.jpg',
      competitions: 'Championnat du Monde BWF',
      competences: ['Être rapide', 'Réflexe'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Container(
              color: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SportCard(sport: sports[0]),
                    SportCard(sport: sports[1]),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const AjoutSportPage(),
                          ),
                        );
                      },
                      child: Text('Ajouter un sport'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
