import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';
import 'package:space_trader_game/controller/cours_controller.dart';


class FormCours extends StatefulWidget {
  const FormCours({Key? key}) : super(key: key);

  @override
  State<FormCours> createState() => _FormCoursState();
}

class _FormCoursState extends State<FormCours> {
  final cours_form = GlobalKey<FormState>();
  String choosenDateCours = "";
  String choosenDateFinCours = "";


  TextEditingController cours_name = new TextEditingController();
  TextEditingController level = new TextEditingController();
  TextEditingController field = new TextEditingController();
  TextEditingController endCours = new TextEditingController();
  TextEditingController date = new TextEditingController();
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
          TextField(
              controller: date,
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Date du cours"
              ),
              readOnly:
              true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));

                var _selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate);
                  setState(() {
                    date.text =
                        formattedDate + " " + formatTime(_selectedTime.toString()); //set output date to TextField value.
                    choosenDateFinCours = formattedDate + " " + formatTime(_selectedTime.toString());
                  });
                } else {
                  print("Date is not selected");
                }
              }),
          SizedBox(height: 15),
          TextField(
              controller: endCours,
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Fin du cours"
              ),
              readOnly:
              true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));

                var _selectedEndTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate);
                  setState(() {
                    endCours.text =
                        formattedDate + " " + formatTime(_selectedEndTime.toString()); //set output date to TextField value.
                        choosenDateFinCours = formattedDate + " " + formatTime(_selectedEndTime.toString());
                  });
                } else {
                  print("Date is not selected");
                }
              }),
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
                setState(() {
                  CoursController.insertCoursFromForm(cours_name.text, level.text, field.text, date.text, endCours.text, discipline.text, int.parse(number_of_seats.text));
                })
              },
              child: const Text("Créer"),
            ),
          ),
        ]
      ) ,
    ));
  }
}


String formatTime(String time) {
  var formatedTime = time;
  formatedTime = formatedTime.replaceAll("TimeOfDay(", "");
  formatedTime = formatedTime.replaceAll(")", "");
  return formatedTime;
}