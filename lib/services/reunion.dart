
import '../backend/mongodb.dart';
import 'dart:developer' as developer;

import '../models/Reunion.dart';


class ReunionClass {

  static insertReunion(meeting_name, meeting_theme, meeting_photo) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Reunions');


    Reunion new_meeting = new Reunion(meeting_name, meeting_theme, meeting_photo);

    await collection.insertOne(new_meeting.toMap());
  }

}