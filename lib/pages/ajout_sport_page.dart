import 'package:flutter/material.dart';

import '../models/sport.dart';

class AjoutSportPage extends StatefulWidget {
  const AjoutSportPage({super.key});

  @override
  State<AjoutSportPage> createState() => _AjoutSportPageState();
}

class _AjoutSportPageState extends State<AjoutSportPage> {
  final nomController = TextEditingController();
  final descriptionController = TextEditingController();
  final dureeController = TextEditingController();
  final competitionController = TextEditingController();
  final competenceController = TextEditingController();

  void Enregistrer() {
    final ajoutSport = Sport(
      nom: nomController.text,
      description: descriptionController.text,
      dureeMatch: int.parse(dureeController.text),
      competitions: competitionController.text,
      competences: competenceController.text.split(','),
    );
    Navigator.pop(context, ajoutSport);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page d\'ajout',
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          // Champ pour le nom du sport
          TextField(
            controller: nomController,
            decoration: InputDecoration(hintText: 'Entrer le nom du sport'),
          ),

          // Champ pour la description du sport
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              hintText: 'Entrer la description du sport',
            ),
          ),

          // Champ pour la durée d'un match
          TextField(
            keyboardType: TextInputType.number,
            controller: dureeController,
            decoration: InputDecoration(
              hintText: 'Combien de temps dure un match',
            ),
          ),

          // Champ pour la compétition la plus prestigieuse
          TextField(
            controller: competitionController,
            decoration: InputDecoration(
              hintText: 'Entrer la compétition la plus prestigieuse',
            ),
          ),

          // Champ pour les compétences requises pour le sport
          TextField(
            controller: competenceController,
            decoration: InputDecoration(
              hintText: 'Entrer les compétences requises pour le sport (séparées par des virgules)',
            ),
          ),
          SizedBox(height: 30),

          ElevatedButton(onPressed: Enregistrer, child: Text('Enregistrer')),
        ],
      ),
    );
  }
}
