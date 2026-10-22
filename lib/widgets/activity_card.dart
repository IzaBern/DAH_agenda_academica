import 'package:agenda_academica/core/service_locator.dart';
import 'package:agenda_academica/models/activity.dart';
import 'package:agenda_academica/store/activity_store.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  ActivityCard({super.key, required this.activity});
  final Activity activity;
  final ActivityStore store = getIt<ActivityStore>();

  String _dateFormat(DateTime d) {
    final dia = d.day.toString().padLeft(2, '0');
    final mes = d.month.toString().padLeft(2, '0');
    return "$dia/$mes/${d.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: (activity.completed)
            ? const Color.fromARGB(255, 217, 225, 225)
            : const Color.fromARGB(255, 178, 223, 219),
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
                      child: Text(activity.subjectEmoji, style: TextStyle(fontSize: 27)),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity.title,
                          style: TextStyle(
                            color: (activity.completed)
                                ? Colors.blueGrey
                                : Colors.teal[800],
                            fontSize: 17,
                            fontWeight: FontWeight(700),

                            decoration: (activity.completed)
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                        Text(
                          activity.subject,
                          style: TextStyle(color: Colors.teal[800]),
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    value: activity.completed,
                    onChanged: (_) => store.completedToggle(activity.id),
                    side: const BorderSide(color: Colors.teal, width: 2.0),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 10),
                  Expanded(child: Text(softWrap: true, activity.description)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: (activity.completed)
                            ? Colors.blueGrey
                            : Colors.teal,
                        width: 1.3,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            activity.typeIcon,
                            color: (activity.completed)
                                ? Colors.blueGrey
                                : Colors.teal,
                          ),
                          SizedBox(width: 10),
                          Text(activity.type),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: (activity.completed)
                            ? Colors.blueGrey
                            : activity.priorityColor,
                        width: 1.3,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.flag_outlined,
                            color: (activity.completed)
                                ? Colors.blueGrey
                                : activity.priorityColor,
                          ),
                          SizedBox(width: 10),
                          Text(activity.priority),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: (activity.completed)
                            ? Colors.blueGrey
                            : Colors.teal,
                        width: 1.3,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            activity.individual
                                ? Icons.person_outline
                                : Icons.groups_outlined,
                            color: (activity.completed)
                                ? Colors.blueGrey
                                : Colors.teal,
                          ),
                          SizedBox(width: 10),
                          Text(activity.individual ? "Individual" : "Em grupo"),
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
                        Text(_dateFormat(activity.deadLine)),
                        SizedBox(width: 20),
                        Icon(
                          Icons.access_time_outlined,
                          color: Colors.teal[800],
                        ),
                        SizedBox(width: 5),
                        Text("${activity.time} min"),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => store.removeActivity(activity.id),
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
      ),
    );
  }
}
