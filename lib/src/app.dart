import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_bonas/src/router/guard/auth_guard.dart';
import 'package:portfolio_bonas/src/settings/settings_controller.dart';

import 'router/router.gr.dart';

class BonasPortfolio extends ConsumerStatefulWidget {
  const BonasPortfolio(this.settingsController, {super.key});
  final SettingsController settingsController;


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BonasPortfolioState();
}

class _BonasPortfolioState extends ConsumerState<BonasPortfolio> {
  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.settingsController, 
      builder: (BuildContext context, Widget? child){
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          supportedLocales: const [
            Locale('en'),
            Locale('fr'),
            // English, no country code
          ],
          theme: ThemeData(
            fontFamily: "Roboto",
            typography: Typography.material2021(
              platform: Theme.of(context).platform,
            ),
            primaryColor: const Color(0xff008060),
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              displayMedium: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              displaySmall: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              headlineMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              headlineSmall: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              titleLarge: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              bodyLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              titleMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              titleSmall: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              labelLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              bodySmall: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              labelSmall: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                ),
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                ),
              ),
            ),
            indicatorColor: Colors.black,
            useMaterial3: true,
            // colorSchemeSeed: Colors.,
            appBarTheme: const AppBarTheme(
              elevation: 3,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Color.fromARGB(255, 1, 120, 5),
              unselectedItemColor: Colors.black,
            ),
            iconTheme: const IconThemeData(color: Colors.black),
              ),
          darkTheme: ThemeData.dark(),
          // todo correct the application theme to dynamic is requested
          // themeMode: settingsController.themeMode,
          themeMode: ThemeMode.light,
        );
      });
  }
}