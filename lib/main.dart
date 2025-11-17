import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_portfolio_website/i18n/strings.g.dart';
import 'package:my_portfolio_website/providers/nav_provider.dart';
import 'package:my_portfolio_website/providers/theme_provider.dart';
import 'package:my_portfolio_website/router.dart';
import 'package:my_portfolio_website/theme/dark_theme.dart';
import 'package:my_portfolio_website/theme/light_theme.dart';
import 'package:provider/provider.dart';

final appRouter = AppRouter();

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  usePathUrlStrategy();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavProvider()),
        ChangeNotifierProvider(create: (context) => ThemeNotifier()),
      ],
      child: TranslationProvider(
        child: const MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, child) => MaterialApp.router(
        locale: TranslationProvider.of(context).flutterLocale, 
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        theme: lightTheme,
        title: 'Maksim Bulanovich',
        darkTheme: darkTheme,
        themeMode: notifier.themeMode,
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
        routeInformationProvider: appRouter.routeInfoProvider(),
      ),
    );
  }
}
