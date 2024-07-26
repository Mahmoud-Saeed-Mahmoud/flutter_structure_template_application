import 'package:shared_preferences/shared_preferences.dart';

const LOCALEKEY = "LOCALEKEY";
// Common Keys (Delete if Unnecessary)
const PROFILEKEY = "PROFILEKEY";
const TOKENKEY = "TOKENKEY";

// Usage :
// void main() {
//    ...
//    await Prefs.init()
//    ...
//    runApp(MyApp());
// }
class Prefs {
  static late SharedPreferences _prefs;

  // Hidden Constructor
  // i.e : Constructor cannot be called upon this class
  // Initialization should be done using [init()]
  Prefs._();

  static deleteString(String key) async {
    _prefs.remove(key);
  }

  static String? getString(String key) => _prefs.getString(key);

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveString(String key, String value) =>
      _prefs.setString(key, value);
}
