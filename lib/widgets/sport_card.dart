import 'package:flutter/material.dart';

class SportCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                child: Text(
                  'Titre du sport',
                  style: TextStyle(color: Colors.redAccent, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Container(
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
              FloatingActionButton(
                onPressed: () {},
                child: Text('En savoir plus'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
