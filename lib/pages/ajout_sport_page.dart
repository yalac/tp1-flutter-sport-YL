import 'package:flutter/material.dart';

class AjoutSportPage extends StatefulWidget {
  const AjoutSportPage({super.key});

  @override
  State<AjoutSportPage> createState() => _AjoutSportPageState();
}

class _AjoutSportPageState extends State<AjoutSportPage> {
  final nomController = TextEditingController();
  final descriptionController = TextEditingController();
  final durationController = TextEditingController();
  final competitionController = TextEditingController();
  final competenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page d\'ajout',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nomController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrer le nom du sport',
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Entrer la description du sport',
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: durationController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Entrer la durée moyenne d\'un match',
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: competitionController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Entrer la compétition la plus prestigieuse',
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: competenceController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Entrer les compétences requises pour le sport',
              ),
            ),
          ),
          SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Retour en arrière'),
          ),
        ],
      ),
    );
  }
}
