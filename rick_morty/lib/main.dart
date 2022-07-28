import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/rick_morty_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RICK & MORTY APP',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case RickMortyHome.routeId:
            return MaterialPageRoute(
              builder: (context) {
               return const RickMortyHome(); 
            },
            );
            default:
              return null;
        }
      },
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme (
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
