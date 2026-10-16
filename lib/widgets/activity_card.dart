import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ActivityCard extends StatelessWidget {
  ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 178, 223, 219),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                    child: Text("🧑‍💻", style: TextStyle(fontSize: 27)),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Atividade de Dart",
                            style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 17,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "Programação",
                            style: TextStyle(color: Colors.teal[800]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Checkbox(
                  value: false,
                  onChanged: (_) {},
                  side: const BorderSide(color: Colors.teal, width: 2.0),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    softWrap: true,
                    "Fazer projeto determinado pelo Professor",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.teal, width: 1.3),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.edit_note_outlined, color: Colors.teal),
                        SizedBox(width: 10),
                        Text("Exercício"),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.teal, width: 1.3),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.flag_outlined, color: Colors.teal),
                        SizedBox(width: 10),
                        Text("Baixa"),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.teal, width: 1.3),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person_outline, color: Colors.teal),
                        SizedBox(width: 10),
                        Text("Individual"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(height: 1, color: Colors.teal),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 21,
                        color: Colors.teal[800],
                      ),
                      SizedBox(width: 5),
                      Text("18/09/2026"),
                      SizedBox(width: 20),
                      Icon(Icons.access_time_outlined, color: Colors.teal[800]),
                      SizedBox(width: 5),
                      Text("45"),
                      SizedBox(width: 5),
                      Text("min"),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outline,
                    size: 28,
                    color: Colors.teal[800],
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
