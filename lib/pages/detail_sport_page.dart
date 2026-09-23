import 'package:flutter/material.dart';

class DetailSportPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page de détail',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
