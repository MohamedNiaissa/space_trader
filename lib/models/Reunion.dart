import 'package:intl/intl.dart';

class Reunion {
  late String nomReunion;
  late String sujet;
  late String photo;
  late String debutReunion;

  Reunion(this.nomReunion, this.sujet, this.photo, this.debutReunion);

  String toString() {
  // DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
    return 'Reunion{"nomReunion": "'+nomReunion+'", "sujet": "'+sujet+'", "photo": "'+photo+'", "debutReunion": "'+debutReunion+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nomReunion': nomReunion,
      'sujet': sujet,
      'photo': photo,
      'debutReunion': debutReunion
    };
  }
}