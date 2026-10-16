import 'package:agenda_academica/core/service_locator.dart';
import 'package:agenda_academica/models/app_page.dart';
import 'package:agenda_academica/pages/agenda_page.dart';
import 'package:agenda_academica/pages/new_activity_page.dart';
import 'package:agenda_academica/store/navigation_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavigationStore store = getIt<NavigationStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        switch (store.currentPage) {
          case AppPage.agenda:
            return AgendaPage();
          case AppPage.newActivity:
            return NewActivityPage();
        }
      },
    );
  }
}
