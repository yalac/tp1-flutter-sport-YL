import 'package:flutter/material.dart';

import '../models/sport.dart';

class AjoutSportPage extends StatefulWidget {
  const AjoutSportPage({super.key});

  @override
  State<AjoutSportPage> createState() => _AjoutSportPageState();
}

class _AjoutSportPageState extends State<AjoutSportPage> {
  String? erreurNom;
  String? erreurDescription;
  String? erreurDuree;
  String? erreurCompetition;
  String? erreurCompetence;
  final nomController = TextEditingController();
  final descriptionController = TextEditingController();
  final dureeController = TextEditingController();
  final competitionController = TextEditingController();
  final competenceController = TextEditingController();

  void enregistrer() {
    erreurNom = null;
    erreurDescription = null;
    erreurDuree = null;
    erreurCompetition = null;
    erreurCompetence = null;
    if (nomController.text.trim().isEmpty) {
      setState(() {
        erreurNom = 'Entrez un nom de sport';
      });
      return;
    }
    if (descriptionController.text.isEmpty) {
      setState(() {
        erreurDescription = 'Entrez une description de sport';
      });
      return;
    }
    if (dureeController.text.isEmpty) {
      setState(() {
        erreurDuree = 'Entrez une durée de match (en minutes)';
      });
      return;
    }
    if (competitionController.text.isEmpty) {
      setState(() {
        erreurCompetition = 'Entrez au moins une compétition';
      });
      return;
    }
    if (competenceController.text.isEmpty) {
      setState(() {
        erreurCompetence = 'Entrez au moins une compétence';
      });
      return;
    } else {
      setState(() {
        final ajoutSport = Sport(
          nom: nomController.text,
          description: descriptionController.text,
          dureeMatch: int.parse(dureeController.text),
          competitions: competitionController.text,
          competences: competenceController.text.split(','),
        );
        Navigator.pop(context, ajoutSport);
      });
    }
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
            decoration: InputDecoration(
              labelText: 'Entrer le nom du sport',
              errorText: erreurNom,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour la description du sport
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              labelText: 'Entrer la description du sport',
              errorText: erreurDescription,
            ),
          ),

          // Champ pour la durée d'un match
          TextField(
            keyboardType: TextInputType.number,
            controller: dureeController,
            decoration: InputDecoration(
              labelText: 'Combien de temps dure un match (en minutes)',
              errorText: erreurDuree,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour la compétition la plus prestigieuse
          TextField(
            controller: competitionController,
            decoration: InputDecoration(
              labelText: 'Entrer la compétition la plus prestigieuse',
              errorText: erreurCompetition,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour les compétences requises pour le sport
          TextField(
            controller: competenceController,
            decoration: InputDecoration(
              labelText: 'Entrer les compétences requises pour le sport (séparées par des virgules)',
              errorText: erreurCompetence,
            ),
          ),
          SizedBox(height: 30),

          Row(
            children: [
              ElevatedButton(
                onPressed: enregistrer,
                child: Text('Enregistrer'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Annuler'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
