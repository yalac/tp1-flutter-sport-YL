import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/models/sport.dart';

class DetailSportPage extends StatelessWidget {
  final Sport sport;
  const DetailSportPage({super.key, required this.sport});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titre de du sport
              Text(
                'Page de détail du sport de : ${sport.nom}',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              // Description du sport
              Text(sport.description, style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),

              // Durée d'un match
              Text(
                'Durée d\'un match : ${sport.dureeMatch}',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),

              // Image pour représenter le sport
              Text('Représentation du sport : ${sport.image}'),
              SizedBox(height: 20),

              // Compétitions la plus prestigieuse du sport
              Text(
                'Compétitions la plus prestigieuse : ${sport.competitions}',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),

              // Liste des compétences requises pour le sport
              Text('Compétences requises : '),
              ...sport.competences.map(
                (element) => Text('- $element', style: TextStyle(fontSize: 15)),
              ),
              SizedBox(height: 30),

              // Bouton pour retourner sur la page d'accueil
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Retour en arrière'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
