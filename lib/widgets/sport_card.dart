import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/models/sport.dart';
import 'package:tp1_sport_yl/pages/detail_sport_page.dart';

class SportCard extends StatelessWidget {
  final Sport sport;

  const SportCard({super.key, required this.sport});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => const DetailSportPage(),
            ),
          );
        },
        child: SizedBox(
          height: 100,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      sport.nom,
                      style: TextStyle(color: Colors.redAccent, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      sport.description,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
