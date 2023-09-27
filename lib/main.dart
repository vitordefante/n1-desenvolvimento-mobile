import 'package:flutter/material.dart';
import 'package:freelance_guido/pages/games_page.dart';
import 'package:freelance_guido/utils/routes.dart';
import '/pages/games_categories_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Game Store',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              backgroundColor: const Color(0xFFBDD2F1),
              accentColor: const Color(0xFFFEC849),
            ),
          fontFamily: 'Lato',
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
            )
          ),
          useMaterial3: false,
        ),
        home: HomePage(),
        routes: {
          appRoutes.MAIN: (ctx) => MyApp(),
          appRoutes.GAMES_CATEGORIES: (ctx) => gamesCategoriesPage(),
          appRoutes.GAMES: (ctx) => gamesPage(),
        },
        debugShowCheckedModeBanner: false,
    );
  }
}