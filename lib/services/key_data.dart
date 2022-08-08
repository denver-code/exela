import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

getIntData(key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int needint = (prefs.getInt(key) ?? 0);
  return needint;
}

setIntData(key, value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt(key, value);
}

Future<String> getStringData(key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String needstring = (prefs.getString(key) ?? "");
  return needstring;
}

setStringData(key, value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}

class SecureStorage {
  static final FlutterSecureStorage _storage = FlutterSecureStorage();
  static Future writeSecureData(key, value) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> readSecureData(String key) async {
    return await _storage.read(key: key);
  }

  static Future deleteSecureData(String key) async {
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }
}
