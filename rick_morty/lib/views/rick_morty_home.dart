//pagina que tem o inicio do app com fotod minimizadas dos personagens

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RickMortyHome extends StatefulWidget {
  static const routeId = '/';

  const RickMortyHome({Key? key}) : super({key: key});
  
  @override
  State<RickMortyHome> createState() => _RickMortyHomeState();
  
}

class _RickMortyHomeState extends State<RickMortyHome>{

  var client = http.Client();
try {
  var response = await client.get(
      Uri.parse('https://rickandmortyapi.com/api'),
      );
  var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
  var uri = Uri.parse(decodedResponse['uri'] as String);
  print(await client.get(uri));
} finally {
  client.close();
}
  
  @override
  Widget build(BuildContext context) {
    
  }

}
