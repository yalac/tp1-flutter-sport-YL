import 'package:flutter/material.dart';

class AjoutSportPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page d\'ajout',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
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
