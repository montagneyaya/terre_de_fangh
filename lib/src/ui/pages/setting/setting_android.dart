import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:terre_de_fangh/src/data/resources/notifier/theme_mode.notifier.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';

class SettingAndroid extends StatefulWidget {
  const SettingAndroid({super.key});

  @override
  State<SettingAndroid> createState() => _SettingAndroidState();
}

class _SettingAndroidState extends State<SettingAndroid> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          LangUI.settings,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        const Divider(),
        Row(
          children: [
            Text(
              LangUI.theme,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Consumer<ThemeModeNotifier>(
              builder: (context, themeModeNotifier, child) => Expanded(
                child: Column(
                  children: [
                    RadioListTile<ThemeMode>(
                      title: Text(
                        LangUI.light,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      ),
                      secondary: Icon(
                        Icons.light_mode,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      value: ThemeMode.light,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: Text(
                        LangUI.dark,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      ),
                      secondary: Icon(
                        Icons.dark_mode,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      value: ThemeMode.dark,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: Text(
                        LangUI.system,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      ),
                      secondary: Icon(
                        Icons.lightbulb,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      value: ThemeMode.system,
                      controlAffinity: ListTileControlAffinity.trailing,
                      groupValue: themeModeNotifier.themeMode,
                      onChanged: (ThemeMode? value) {
                        themeModeNotifier.toggleThemeMode(value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
