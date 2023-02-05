
import 'package:space_trader_game/models/Cours.dart';

import '../backend/mongodb.dart';
import 'dart:developer' as developer;

import '../models/Actualites.dart';
import '../models/Reunion.dart';

import 'package:mongo_dart/mongo_dart.dart';

import 'dart:developer' as developer;

class CoursClass {

  static insertCours(String cours_name, String niveau, String terrain, String date, String endCours, String discipline, int nombreDePlace) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Cours');

    Cours new_course = Cours(cours_name, niveau, terrain, date, endCours, discipline, nombreDePlace);
    await collection.insertOne(new_course.toMap());

    // var val = await collection.findOne(where.eq("my_field", 17).fields(['str_field','my_field']));
    var cours = await collection.findOne({"nomCours": cours_name});

    Actualites new_actualite = new Actualites("Cours", cours["_id"], date, endCours, false);

    collection = await db.collection('Actualites');

    await collection.insertOne(new_actualite.toMap());

  }

}