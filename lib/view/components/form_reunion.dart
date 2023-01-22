import 'package:flutter/material.dart';

import '../../controller/reunion_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';


class FormReunion extends StatefulWidget {
  const FormReunion({Key? key}) : super(key: key);

  @override
  State<FormReunion> createState() => _FormReunionState();
}

class _FormReunionState extends State<FormReunion> {
  final meeting_form = GlobalKey<FormState>();

  TextEditingController meeting_name = new TextEditingController();
  TextEditingController meeting_subject = new TextEditingController();
  TextEditingController meeting_photo = new TextEditingController();
  TextEditingController debutReunion = new TextEditingController();

  String choosenDateReunion = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Form(
            key: meeting_form,
            child: Column(children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Veuillez entrer le nom de la réunion ";
                  }
                  return null;
                },
                controller: meeting_name,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom de la réunion',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Veuillez entrer le nom du cours ";
                  }
                  return null;
                },
                controller: meeting_subject,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom du sujet',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                  controller: debutReunion, //editing controller of this TextField
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Date de la reunion" //label text of field
                  ),
                  readOnly:
                  true, //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate);
                      setState(() {
                        debutReunion.text =
                            formattedDate; //set output date to TextField value.
                        choosenDateReunion = formattedDate;
                      });
                    } else {
                      print("Date is not selected");
                    }
                  }),
              SizedBox(height: 15),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Veuillez entrer le lien de l'image";
                  }
                  return null;
                },
                controller: meeting_photo,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Photo',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: TextButton(
                  onPressed:  ()  async => {
                    //context.go('/main')
                    setState(() {
                      ReunionController.insertReunionFromForm(meeting_name.text,meeting_subject.text,meeting_photo.text, choosenDateReunion);
                    })
                  },
                  child: const Text("Créer"),
                ),
              ),
            ])));
  }
}
