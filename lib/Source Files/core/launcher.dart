import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:needtaxi/Source%20Files/core/router.dart';
import 'package:needtaxi/l10n/l10n.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'application.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Launcher extends StatefulWidget {
  Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  String theme = "light";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NeedTaxi',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      initialRoute: '/',
      routes: {
        '/': (context) => Application(),
      },
      darkTheme: ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          size: 33,
          color: Colors.grey,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black45,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black45,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.white70,
            unselectedItemColor: Colors.white54),
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.lightBlueAccent,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12
          ),
          iconColor: Colors.white54,
        ),
        cardColor: Colors.white,
        focusColor: Colors.lightBlueAccent,
        dividerColor: Colors.white70,
      ),
      theme: ThemeData.light().copyWith(
        iconTheme: IconThemeData(
          size: 33,
          color: Colors.grey,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          iconColor: Colors.grey,
          hintStyle: TextStyle(color: Colors.grey),
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          counterStyle: TextStyle(
            color: Colors.grey,
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1
              ),
              borderRadius: BorderRadius.circular(7)
          ),
          fillColor: Colors.white,
          filled: true,
          isDense: false,
          suffixStyle: TextStyle(
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
        cardColor: Colors.white,
        dividerColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
      themeMode: theme == 'light'
          ? ThemeMode.light
          : theme == 'dark'
              ? ThemeMode.dark
              : ThemeMode.system,
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return RouteTransition(
            widget: const Application(),
            routeName: settings.name,
          );
        } else if (settings.name == '/search') {
          return RouteTransition(
              widget: Application(
                route: settings.name,
              ),
              routeName: settings.name);
        } else if (settings.name == '/notifications') {
          return RouteTransition(
            widget: Application(
              route: settings.name,
            ),
            routeName: settings.name,
          );
        } else if (settings.name == '/accounts') {
          return RouteTransition(
            widget: Application(
              route: settings.name,
            ),
            routeName: settings.name,
          );
        } else if (settings.name == '/signup') {
          return RouteTransition(
            widget: Application(
              route: settings.name,
            ),
            routeName: settings.name,
          );
        } else if (settings.name == '/signin') {
          return RouteTransition(
            widget: Application(
              route: settings.name,
            ),
            routeName: settings.name,
          );
        }
        return null;
      },
      onUnknownRoute: (_) {
        return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
            body: Text("Unknown page"),
          ),
        );
      },
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        minWidth: 400,
        //maxWidth: 1200,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(
            400,
            name: MOBILE,
          ),
          const ResponsiveBreakpoint.resize(
            480,
            name: TABLET,
          ),
          const ResponsiveBreakpoint.resize(
            768,
            name: "Tablets portrait mode",
          ),
          const ResponsiveBreakpoint.resize(
            1024,
            name: DESKTOP,
          ),
          const ResponsiveBreakpoint.resize(
            1280,
            name: "Large screen",
          ),
          const ResponsiveBreakpoint.autoScale(
            2460,
            name: "Large screen infinite",
          ),
        ],
        background: Container(
          color: theme == "light" ? Colors.white : Colors.grey[900],
        ),
      ),
    );
  }
}
