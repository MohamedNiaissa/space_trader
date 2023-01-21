import 'package:intl/intl.dart';

class Reunion {
  late String nomReunion;
  late String sujet;
  late String photo;

  Reunion(this.nomReunion, this.sujet, this.photo);

  String toString() {
    return 'Reunion{"nomReunion": "'+nomReunion+'", "sujet": "'+sujet+'", "photo": "'+photo+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nomReunion': nomReunion,
      'sujet': sujet,
      'photo': photo,
    };
  }
}