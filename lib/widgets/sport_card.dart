import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/models/sport.dart';
import 'package:tp1_sport_yl/pages/detail_sport_page.dart';

class SportCard extends StatelessWidget {
  final Sport sport;

  const SportCard({super.key, required this.sport});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2B2740),
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailSportPage(sport: sport),
            ),
          );
        },
        child: SizedBox(
          height: 100,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 5,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF7C4DFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sport.nom,
                      style: TextStyle(
                        color: Color(0xFFBCA7FF),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      sport.description,
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
