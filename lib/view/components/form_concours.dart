import 'package:flutter/material.dart';

class FormConcours extends StatefulWidget {
  const FormConcours({Key? key}) : super(key: key);

  @override
  State<FormConcours> createState() => _FormConcoursState();
}

class _FormConcoursState extends State<FormConcours> {
  final concours_form = GlobalKey<FormState>();
  TextEditingController concours_name = new TextEditingController();
  TextEditingController speciality = new TextEditingController();
  TextEditingController adresse = new TextEditingController();
  TextEditingController photo = new TextEditingController();
  TextEditingController date = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: concours_form,
        child: Column(children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez entrer le nom du concoours ";
              }
              return null;
            },
            controller: concours_name,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nom du concours',
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
                return "Veuillez entrer la spécialité ";
              }
              return null;
            },
            controller: speciality,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Spécialité',
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
                return "Veuillez entrer l'adresse ";
              }
              return null;
            },
            controller: adresse,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Adresse',
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
                return "Veuillez entrer le lien de la photo ";
              }
              return null;
            },
            controller: photo,
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
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez entrer la date ";
              }
              return null;
            },
            controller: date,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Date',
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
        ]),
      ),
    );
  }
}
