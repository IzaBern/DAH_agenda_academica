import 'package:agenda_academica/widgets/activity_card.dart';
import 'package:agenda_academica/widgets/agenda_clear.dart';
import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Agenda Acadêmica",
          style: TextStyle(
            fontWeight: FontWeight(700),
            color: Colors.teal[800],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[100],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cleaning_services_outlined,
              size: 30,
              color: Colors.teal[800],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  "Resumo",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight(700),
                    color: Colors.teal[800],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.list_alt_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Total",
                            style: TextStyle(
                              fontWeight: FontWeight(500),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Card(
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Pendentes",
                            style: TextStyle(
                              fontWeight: FontWeight(500),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Card(
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "6",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Concluídas",
                            style: TextStyle(
                              fontWeight: FontWeight(500),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Card(
              color: Colors.teal[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 26,
                          color: Colors.teal[800],
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Tempo estimado das pendências",
                          style: TextStyle(color: Colors.teal[800]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "40",
                          style: TextStyle(
                            fontWeight: FontWeight(600),
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "min",
                          style: TextStyle(
                            fontWeight: FontWeight(600),
                            color: Colors.teal[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            AgendaClear(),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.add, size: 30),
                    SizedBox(width: 8),
                    Text(
                      "Nova atividade",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
