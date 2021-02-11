import 'package:shared_preferences/shared_preferences.dart';

class MailId{
  String emailid;
  loadSavedData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
      emailid=preferences.get('Email');

  }

}