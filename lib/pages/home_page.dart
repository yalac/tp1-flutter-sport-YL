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
      competitions: 'Ligue des champions',
      competences: ['S\'échauffer', 'Faire des passes précises'],
    ),
    Sport(
      nom: 'Badminton',
      description: 'Sport de raquette le plus rapide au monde',
      dureeMatch: 60,
      competitions: 'Championnat du Monde BWF',
      competences: ['Être rapide', 'Réflexe'],
    ),
  ];

  Future<void> ajouterSport() async {
    final ajoutSport = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AjoutSportPage()),
    );
    if (ajoutSport != null) {
      setState(() {
        sports.add(ajoutSport);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des sports', style: TextStyle(fontSize: 25)),
      ),
      body: ListView.builder(
        itemCount: sports.length,
        itemBuilder: (BuildContext context, int index) {
          return SportCard(sport: sports[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ajouterSport,
        child: Text('Ajouter un sport'),
      ),
    );
  }
}
