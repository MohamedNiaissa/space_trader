import 'package:intl/intl.dart';

class Actualites {
  late String typeEvent;
  late Object eventId;
  late String dateCreateEvent;
  late String dateFinEvent;
  late bool statut;

  Actualites(this.typeEvent, this.eventId, this.dateCreateEvent, this.dateFinEvent, this.statut );

  String toString() {
   // DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
    return 'Actualites{"typeEvent": "'+typeEvent+'", "eventId": "'+eventId.toString()+'", "dateCreateEvent": "'+dateCreateEvent+', "dateFinEvent": "'+dateFinEvent+'"statut": "'+(statut == true ? 'true' : 'false')+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'typeEvent': typeEvent,
      'eventId': eventId,
      'dateCreateEvent': dateCreateEvent,
      'dateFinEvent': dateFinEvent,
      'statut': statut,
    };
  }
}