import 'package:flutter/material.dart';

class Activity {
  final int id, time;
  final String title, subject, description, type, priority, subjectEmoji;
  final DateTime deadLine;
  final bool individual, completed;
  final Color priorityColor;
  final IconData typeIcon;

  const Activity({
    required this.id,
    required this.title,
    required this.subject,
    required this.description,
    required this.type,
    required this.priority,
    required this.deadLine,
    required this.time,
    required this.individual,
    this.completed = false,
    this.priorityColor = Colors.teal,
    this.typeIcon = Icons.edit_note_outlined,
    this.subjectEmoji = "🧑‍💻",
  });

  Activity copyWith({bool? completed}) => Activity(
    id: id,
    title: title,
    subject: subject,
    description: description,
    type: type,
    priority: priority,
    deadLine: deadLine,
    time: time,
    individual: individual,
    completed: completed ?? this.completed,
    priorityColor: priorityColor,
    typeIcon: typeIcon,
    subjectEmoji: subjectEmoji,
  );
}
