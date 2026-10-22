import 'package:agenda_academica/core/service_locator.dart';
import 'package:agenda_academica/models/activity.dart';
import 'package:agenda_academica/store/activity_store.dart';
import 'package:agenda_academica/store/navigation_store.dart';
import 'package:flutter/material.dart';

class NewActivityPage extends StatefulWidget {
  const NewActivityPage({super.key});

  @override
  State<NewActivityPage> createState() => _NewActivityPageState();
}

class _NewActivityPageState extends State<NewActivityPage> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  String? _subject;
  String? _type;
  String? _priority;
  DateTime? _deadLine;
  bool _individual = true;

  final storePage = getIt<NavigationStore>();
  final storeActivity = getIt<ActivityStore>();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  String dateFormat(DateTime d) {
    final dia = d.day.toString().padLeft(2, '0');
    final mes = d.month.toString().padLeft(2, '0');
    return "$dia/$mes/${d.year}";
  }

  void save() {
    if (!formKey.currentState!.validate()) return;

    storeActivity.addActivity(
      Activity(
        id: DateTime.now().millisecondsSinceEpoch,
        title: titleController.text.trim(),
        subject: _subject!,
        description: descriptionController.text.trim(),
        type: _type!,
        priority: _priority!,
        deadLine: _deadLine!,
        time: int.parse(timeController.text),
        individual: _individual,
      ),
    );

    storePage.goToAgenda();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nova Atividade",
          style: TextStyle(
            fontWeight: FontWeight(700),
            color: Colors.teal[800],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[100],
        leading: IconButton(
          onPressed: () {
            storePage.goToAgenda();
          },
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.teal[800]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 178, 223, 219),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_calendar_outlined,
                            size: 45,
                            color: Colors.teal[800],
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cadastre uma atividade",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.teal[800],
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                    Text(
                                      "Preencha os campos e salve na sua agenda.",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.title),
                      border: OutlineInputBorder(),
                      labelText: "Título da atividade",
                    ),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? "Informe o título"
                        : null,
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelText: "Disciplina",
                      prefixIcon: Icon(Icons.school_outlined),
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "programacao",
                        child: Text("Programação"),
                      ),
                      DropdownMenuItem(
                        value: "bancoDeDados",
                        child: Text("Banco de Dados"),
                      ),
                      DropdownMenuItem(value: "redes", child: Text("Redes")),
                      DropdownMenuItem(
                        value: "engenhariaDeSoftware",
                        child: Text("Engenharia de Software"),
                      ),
                    ],
                    onChanged: (value) => _subject = value,
                    validator: (v) =>
                        v == null ? "Selecione a disciplina" : null,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            labelText: "Tipo",
                            border: OutlineInputBorder(),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: "exercicio",
                              child: Text("Exercício"),
                            ),
                            DropdownMenuItem(
                              value: "trabalho",
                              child: Text("Trabalho"),
                            ),
                            DropdownMenuItem(
                              value: "prova",
                              child: Text("Prova"),
                            ),
                            DropdownMenuItem(
                              value: "projeto",
                              child: Text("Projeto"),
                            ),
                          ],
                          onChanged: (value) => _type = value,
                          validator: (v) =>
                              v == null ? "Selecione o tipo" : null,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Prioridade",
                            border: OutlineInputBorder(),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: "baixa",
                              child: Text("Baixa"),
                            ),
                            DropdownMenuItem(
                              value: "media",
                              child: Text("Média"),
                            ),
                            DropdownMenuItem(
                              value: "alta",
                              child: Text("Alta"),
                            ),
                          ],
                          onChanged: (value) => _priority = value,
                          validator: (v) =>
                              v == null ? "Selecione a prioridade" : null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: descriptionController,
                    minLines: 3,
                    maxLines: null,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.notes_outlined),
                      border: OutlineInputBorder(),

                      alignLabelWithHint: true,
                      labelText: "Descrição",
                      hintText: "Descreva o que precisa ser feito ...",
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: dateController,
                    readOnly: true,
                    onTap: () async {
                      DateTime? selected = await showDatePicker(
                        context: context,
                        initialDate: _deadLine ?? DateTime.now(),
                        firstDate: DateTime(2026),
                        lastDate: DateTime(2100),
                      );
                      if (selected != null) {
                        _deadLine = selected;
                        dateController.text = dateFormat(selected);
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Data de entrega",
                      prefixIcon: Icon(Icons.event),
                      suffixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(),
                    ),
                    validator: (v) => _deadLine == null
                        ? "Selecione a data de entrega"
                        : null,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: timeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.timer_outlined),
                      suffixText: "min",
                      border: OutlineInputBorder(),
                      labelText: "Tempo estimado em minutos",
                    ),
                    validator: (v) {
                      final t = int.tryParse(v ?? "");
                      if (t == null || t < 0) {
                        return "Informe um tempo válido em minutos";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 0,
                    color: const Color.fromARGB(120, 178, 223, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SwitchListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      secondary: Icon(
                        _individual ? Icons.person_outline : Icons.groups,
                        size: 35,
                        color: Colors.teal[800],
                      ),
                      title: const Text("Atividade individual"),
                      subtitle: Text(
                        _individual
                            ? "Será realizada individualmente."
                            : "Será realizada em grupo.",
                      ),
                      value: _individual,
                      onChanged: (valor) => setState(() => _individual = valor),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: save,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.teal[800], // Cor de fundo do botão
                      foregroundColor: Colors.white, // Cor do texto e ícone
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.save_outlined, size: 26),
                          SizedBox(width: 15),
                          Text(
                            "Salvar atividade",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
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
