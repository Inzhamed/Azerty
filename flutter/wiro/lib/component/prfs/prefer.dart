import 'package:get_storage/get_storage.dart';

String user = "Usertoken";

class AppPreferences {
  final GetStorage _sharedPreferences = GetStorage();
  static AppPreferences instance = AppPreferences();

  setToken() {
    bool login = _sharedPreferences.read(user) ?? false;
    login = !login;
    _sharedPreferences.write(user, login);
  }

  getToken() {
    return _sharedPreferences.read(user) ?? false;
  }
}
