import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static late SharedPreferences _prefs;

  //Accederemos a ellos con los getter y setter para poder leerlos desde cualquier punto
  static String _name = '';
  static bool _isTickActive = false;

  //COn este método creamos la instancia de las preferencias
  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name{
    return _prefs.getString('name') ?? _name;
  }
  static set name ( String name ){
    _name = name;
    _prefs.setString('name', name);
  }
  static bool get isTickActive{
      return _prefs.getBool('isTickActive') ?? _isTickActive;
  }

  static set isTickActive(bool tick){
    _isTickActive = tick;
    _prefs.setBool('isTickActive', tick);
  }

}