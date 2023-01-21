import 'package:intl/intl.dart';

class Concours {
  late String nomConcours;
  late String specialite;
  late String adresse;
  late String photo;
  late DateTime date;

  Concours(this.nomConcours, this.specialite, this.adresse, this.photo, this.date);

  String toString() {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
    return 'Concours{"nomConcours": "'+nomConcours+'", "specialite": "'+specialite+'", "adresse": "'+adresse+'", "photo": "'+photo+'", "date": "'+dateFormat.format(date)+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nomConcours': nomConcours,
      'specialite': specialite,
      'adresse': adresse,
      'photo': photo,
      'date': date
    };
  }
}