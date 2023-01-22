
import '../services/reunion.dart';

class ReunionController {

  static insertReunionFromForm(meeting_name, meeting_theme, meeting_photo, debutReunion) {
    ReunionClass.insertReunion(meeting_name, meeting_theme, meeting_photo, debutReunion);
  }

}