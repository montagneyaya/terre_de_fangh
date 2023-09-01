import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/ui/pages/test_page.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:terre_de_fangh/src/data/resources/notifier/theme_mode.notifier.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet.dart';
import 'package:terre_de_fangh/src/ui/pages/create_character/create_character.dart';
import 'package:terre_de_fangh/src/ui/pages/home/home.dart';
import 'package:terre_de_fangh/src/ui/pages/setting/setting.dart';
import 'package:terre_de_fangh/src/ui/themes/theme_naheulbeuk_android.dart';
import 'package:terre_de_fangh/src/ui/themes/theme_naheulbeuk_ios.dart';
import 'package:terre_de_fangh/src/ui/themes/theme_naheulbeuk_web.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_items.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_fight.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_purse.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';
part 'package:terre_de_fangh/src/routes/routes.dart';

class TerreDeFanghApp extends StatelessWidget {
  const TerreDeFanghApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TargetPlatform targetPlatform = Theme.of(context).platform;
    ThemeData? themeDevice;
    ThemeData? themeDeviceDark;
    if (kIsWeb) {
      themeDevice = terreDeFanghWebTheme;
      themeDeviceDark = terreDeFanghWebThemeDark;
    }
    if (targetPlatform == TargetPlatform.android) {
      themeDevice = terreDeFanghTheme;
      themeDeviceDark = terreDeFanghThemeDark;
    }
    if (targetPlatform == TargetPlatform.iOS) {
      themeDevice = terreDeFanghIOSTheme;
      themeDeviceDark = terreDeFanghIOSThemeDark;
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    return ChangeNotifierProvider(
      create: (_) => ThemeModeNotifier(),
      child: Consumer<ThemeModeNotifier>(
        builder: (context, ThemeModeNotifier themeModeNotifier, child) {
          return MaterialApp.router(
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('fr', 'FR'),
            ],
            title: Lang.appName,
            routerConfig: _router,
            theme: themeDevice,
            darkTheme: themeDeviceDark,
            themeMode: themeModeNotifier.themeMode,
          );
        },
      ),
    );
  }
}
