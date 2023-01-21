import 'package:flutter/material.dart';

import '../../controller/reunion_controller.dart';
import 'package:go_router/go_router.dart';


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
                    ReunionController.insertReunionFromForm(meeting_name.text,meeting_subject.text,meeting_photo.text),
                    context.go('/actualities')

                  },
                  child: const Text("Créer"),
                ),
              ),
            ])));
  }
}
