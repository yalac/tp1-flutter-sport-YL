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

    if (nomController.text.isEmpty) {
      setState(() {
        erreurNom = 'Entrez un nom de sport';
      });
      return;
    }
    if (descriptionController.text.isEmpty) {
      setState(() {
        erreurDescription = 'Entrez une description du sport';
      });
      return;
    }
    if (dureeController.text.isEmpty ||
        double.tryParse(dureeController.text) == null) {
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

  InputDecoration decorationChamp({
    String? label,
    IconData? icon,
    String? erreurMessage,
  }) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.white70),
      prefixIcon: Icon(icon, color: Color(0xFF7C4DFF)),
      errorText: erreurMessage,
      filled: true,
      fillColor: Color(0xFF2B2740),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFF7C4DFF), width: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1B2E),
      appBar: AppBar(
        backgroundColor: Color(0xFF2B2740),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Ajouter un sport',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'Créez une nouvelle Card sport',
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          SizedBox(height: 20),

          // Champ pour le nom du sport
          TextField(
            controller: nomController,
            style: TextStyle(color: Colors.white),
            decoration: decorationChamp(
              label: 'Nom du sport',
              icon: Icons.sports_soccer,
              erreurMessage: erreurNom,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour la description du sport
          TextField(
            controller: descriptionController,
            style: TextStyle(color: Colors.white),
            maxLines: 3,
            decoration: decorationChamp(
              label: 'Description',
              icon: Icons.description_outlined,
              erreurMessage: erreurDescription,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour la durée d'un match
          TextField(
            controller: dureeController,
            style: TextStyle(color: Colors.white),
            decoration: decorationChamp(
              label: 'Durée du match (minutes)',
              icon: Icons.timer_outlined,
              erreurMessage: erreurDuree,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour la compétition la plus prestigieuse
          TextField(
            controller: competitionController,
            style: TextStyle(color: Colors.white),
            decoration: decorationChamp(
              label: 'Compétition la plus prestigieuse',
              icon: Icons.emoji_events_outlined,
              erreurMessage: erreurCompetition,
            ),
          ),
          SizedBox(height: 20),

          // Champ pour les compétences requises pour le sport
          TextField(
            controller: competenceController,
            style: TextStyle(color: Colors.white),
            decoration: decorationChamp(
              label: 'Compétences (séparées par des virgules)',
              icon: Icons.star_outline,
              erreurMessage: erreurCompetence,
            ),
          ),
          SizedBox(height: 30),

          SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              onPressed: enregistrer,
              icon: Icon(Icons.save_outlined),
              label: Text('Enregistrer', style: TextStyle(fontSize: 15)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7C4DFF),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white38),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Annuler', style: TextStyle(fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
