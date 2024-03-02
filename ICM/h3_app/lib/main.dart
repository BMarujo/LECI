import 'package:flutter/material.dart';
import 'splash.dart';
import 'user.dart';
import 'screens_builder.dart';
import 'login.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('pt_PT', null).then((_) {
    runApp(
      MaterialApp(
        home: const SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              User user = settings.arguments as User;
              return MaterialPageRoute(
                  builder: (context) => ScreenBuilder(user: user));
            case '/login':
              return MaterialPageRoute(
                builder: (context) => const LoginPage(),
              );
          }
          return null;
        },
      ),
    );
  });
}
