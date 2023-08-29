import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeNotifier extends ChangeNotifier {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late ThemeMode _themeMode;
  late int _themeModePrefs;

  ThemeMode get themeMode => _themeMode;

  ThemeModeNotifier() {
    _themeMode = ThemeMode.light;
    _themeModePrefs = 0;
    _loadFromPrefs();
  }

  void toggleThemeMode(mode) {
    _themeMode = mode;
    _themeModePrefs = _themeModeValue();
    _saveToPrefs(_themeModePrefs);
    notifyListeners();
  }

  int _themeModeValue() {
    switch (_themeMode) {
      case ThemeMode.light:
        return 0;
      case ThemeMode.dark:
        return 1;
      case ThemeMode.system:
        return 2;
    }
  }

  Future<void> _loadFromPrefs() async {
    final SharedPreferences prefs = await _prefs;
    _themeModePrefs = prefs.getInt('themeMode') ?? 0;
    switch (_themeModePrefs) {
      case 0:
        _themeMode = ThemeMode.light;
        break;
      case 1:
        _themeMode = ThemeMode.dark;
        break;
      case 2:
        _themeMode = ThemeMode.system;
        break;
      default:
        _themeMode = ThemeMode.light;
        break;
    }
    notifyListeners();
  }

  Future<void> _saveToPrefs(value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setInt('themeMode', value);
  }
}
