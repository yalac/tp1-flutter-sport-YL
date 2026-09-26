import 'package:flutter/material.dart';

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
              hintText: 'Entrer les compétences requises pour le sport',
            ),
          ),
          SizedBox(height: 30),

          ElevatedButton(onPressed: () {}, child: Text('Enregistrer')),
        ],
      ),
    );
  }
}
