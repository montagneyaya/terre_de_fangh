/// Main application widget that serves as the root of the application.
/// 
/// This widget configures the application's theme, localization, and routing.
/// It uses Provider for state management of the application theme.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myapp/l10n/app_localizations.dart';
import 'package:myapp/src/router.dart';
import 'package:myapp/src/ui/theme/theme.dart';
import 'package:myapp/src/ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

/// The root widget of the application.
/// 
/// This widget is responsible for:
/// - Managing the application's theme state
/// - Setting up internationalization
/// - Configuring the router
/// - Providing theme data to the widget tree
class MyApp extends StatelessWidget {
  /// Creates a [MyApp] instance.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp.router(
            // Localization
            onGenerateTitle: (context) =>
                AppLocalizations.of(context)!.appTitle,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale('en', '')],
            
            // Theming
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeProvider.themeMode,
            
            // Routing configuration
            routerConfig: router,
          );
        },
      ),
    );
  }
}
