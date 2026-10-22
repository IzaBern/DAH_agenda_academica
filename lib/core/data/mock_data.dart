import 'package:agenda_academica/models/activity.dart';

var activityList = <Activity>[
  Activity(
    id: 1,
    title: "Atividade em Dart",
    subject: "Desenvolvimento de Aplicações Híbridas",
    description: "Desenvolver um programa em flutter que simule o funcionamento de uma agenda acadêmica.",
    type: "Projeto",
    priority: "Alta",
    deadLine: DateTime(2026,10,22),
    time: 200,
    individual: true,
  ),
  Activity(
    id: 2,
    title: "Revisão para a prova",
    subject: "Ciência de Dados",
    description: "Resolver 10 questões de Ciências de Dados do ENADE dos anos anteriores.",
    type: "Exercício",
    priority: "Média",
    deadLine: DateTime(2026,11,04),
    time: 40,
    individual: true,
  ),
];
