
import '../backend/mongodb.dart';
import 'dart:developer' as developer;

import '../models/Actualites.dart';
import '../models/Reunion.dart';

import 'package:mongo_dart/mongo_dart.dart';



class ReunionClass {

  static insertReunion(meeting_name, meeting_theme, meeting_photo, debutReunion) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Reunions');

    Reunion new_meeting = new Reunion(meeting_name, meeting_theme, meeting_photo, debutReunion);
    await collection.insertOne(new_meeting.toMap());

   // var val = await collection.findOne(where.eq("my_field", 17).fields(['str_field','my_field']));
    var meeting = await collection.findOne({"nomReunion": meeting_name});

    Actualites new_actualite = new Actualites("Reunion", meeting["_id"], debutReunion, debutReunion, false);

    collection = await db.collection('Actualites');

    await collection.insertOne(new_actualite.toMap());

  }

}