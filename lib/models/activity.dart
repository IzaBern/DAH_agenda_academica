class Activity {
  final int id, time;
  final String title, subject, description, type, priority;
  final DateTime deadLine;
  final bool individual, completed;

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
  );
}
