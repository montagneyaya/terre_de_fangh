import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeNotifier extends ChangeNotifier {

  ThemeModeNotifier() {
    _themeMode = ThemeMode.light;
    _themeModePrefs = 0;
    _loadFromPrefs();
  }
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late ThemeMode _themeMode;
  late int _themeModePrefs;

  ThemeMode get themeMode => _themeMode;

  void toggleThemeMode(ThemeMode mode) {
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
    final prefs = await _prefs;
    _themeModePrefs = prefs.getInt('themeMode') ?? 0;
    switch (_themeModePrefs) {
      case 0:
        _themeMode = ThemeMode.light;
      case 1:
        _themeMode = ThemeMode.dark;
      case 2:
        _themeMode = ThemeMode.system;
      default:
        _themeMode = ThemeMode.light;
        break;
    }
    notifyListeners();
  }

  Future<void> _saveToPrefs(int value) async {
    final prefs = await _prefs;
    await prefs.setInt('themeMode', value);
  }
}
