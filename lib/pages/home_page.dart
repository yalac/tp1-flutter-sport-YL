import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/pages/ajout_sport_page.dart';
import 'package:tp1_sport_yl/widgets/sport_card.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SportCard(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AjoutSportPage()),
                );
              },
              child: Text('Ajouter un sport'),
            ),
          ],
        ),
      ),
    );
  }
}
