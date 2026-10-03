import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/models/sport.dart';

class DetailSportPage extends StatelessWidget {
  final Sport sport;
  const DetailSportPage({super.key, required this.sport});

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
          'Détails du sport : ${sport.nom}',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Description du sport
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF2B2740),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Description : ${sport.description}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Durée d'un match
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF2B2740),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Durée d\'un match : ${sport.dureeMatch} minute(s)',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 10),

              // Compétition la plus prestigieuse du sport
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF2B2740),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Compétition la plus prestigieuse : ${sport.competitions}',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              SizedBox(height: 10),

              // Liste des compétences requises pour le sport
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF2B2740),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Compétences requises',
                      style: TextStyle(
                        color: Color(0xFFBCA7FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...sport.competences.map(
                      (element) => Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          '• $element',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Bouton pour retourner sur la page d'accueil
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7C4DFF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Retour en arrière',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
