import 'package:flutter/material.dart';

class AgendaClear extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Icon(Icons.assignment_add, size: 100, color: Colors.teal),
        SizedBox(height: 20),
        Text(
          "Nenhuma atividade cadastrada.",
          style: TextStyle(color: Colors.teal[900], fontSize: 18),
        ),
        SizedBox(height: 5),
        Text(
          "Use o botão abaixo para começar.",
          style: TextStyle(color: Colors.teal[900], fontSize: 18),
        ),
      ],
    );
  }
}
