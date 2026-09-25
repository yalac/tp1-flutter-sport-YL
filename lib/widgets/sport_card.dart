import 'package:flutter/material.dart';
import 'package:tp1_sport_yl/pages/detail_sport_page.dart';

class SportCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
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
                    'Titre du sport',
                    style: TextStyle(color: Colors.redAccent, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Petite description du sport',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  width: 150,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailSportPage(),
                        ),
                      );
                    },
                    child: Text('En savoir plus'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
