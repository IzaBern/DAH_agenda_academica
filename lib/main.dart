import 'package:agenda_academica/core/service_locator.dart';
import 'package:agenda_academica/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  setUpDependencies();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Agenda Acadêmica",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: Scaffold(body: HomePage()),
    ),
  );
}
