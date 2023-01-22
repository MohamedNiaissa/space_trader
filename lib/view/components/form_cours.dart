import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class FormCours extends StatefulWidget {
  const FormCours({Key? key}) : super(key: key);

  @override
  State<FormCours> createState() => _FormCoursState();
}

class _FormCoursState extends State<FormCours> {
  final cours_form = GlobalKey<FormState>();

  TextEditingController cours_name = new TextEditingController();
  TextEditingController level = new TextEditingController();
  TextEditingController field = new TextEditingController();
  TextEditingController duration = new TextEditingController();
  TextEditingController discipline = new TextEditingController();
 // TextEditingController participants = new TextEditingController();
  TextEditingController number_of_seats = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Form(
      key: cours_form,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez entrer le nom du cours ";
              }
              return null;
            },
            controller: cours_name,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom du cours',
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
                return "Veuillez entrer le niveau ";
              }
              return null;
            },
            controller: level,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Niveau',
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
                return "Veuillez entrer le nom du terrain ";
              }
              return null;
            },
            controller: field,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom du terrain',
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
          DateTimeFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.black45),
              errorStyle: TextStyle(color: Colors.redAccent),
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.event_note),
              labelText: "Veuillez entrer la date et l'heure",
            ),
            mode: DateTimeFieldPickerMode.dateAndTime,
            autovalidateMode: AutovalidateMode.always,
            validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
            onDateSelected: (DateTime value) {
              print(value);
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez entrer la durée ";
              }
              return null;
            },
            controller: duration,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Durée',
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
                return "Veuillez entrer la discipline ";
              }
              return null;
            },
            controller: discipline,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Discipline',
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
                return "Veuillez entrer le nombre de place ";
              }
              return null;
            },
            controller: number_of_seats,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombre de places',
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
              },
              child: const Text("Créer"),
            ),
          ),
        ]
      ) ,
    ));
  }
}
