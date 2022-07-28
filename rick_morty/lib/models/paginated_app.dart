// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PaginatedApp {
  late final List<Info> info;
  late final List<Results> results;


  PaginatedApp({
    required this.info,
    required this.results,
  });

  factory PaginatedApp.fromJson(Map<String, dynamic> map) {
    return PaginatedApp(
      info: List.from(map['info']).map((e) => Info.
      fromJson(e)).toList(),
      results: List.from(map['results']).map((e) =>
      Results.fromJson(e)).toList(),  
    );
  }
  

}

class Info {
  final int count;
  final int pages;
  final String next;
  final null prev;

  Info({
    required this.count,
    required this.pages,
    required this.next,
    required.this.prev,
  });

  factory Info.fromJson(Map<String, dynamic> map) {
    return Info(
      count: map['count'] ?? 0,
      pages: map['pages'] ?? 0,
      next: map['next'] ?? '',
      prev: map['prev'] ?? null,
    );
  }

  
}

class Results {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final List<Origin> origin;
  
  Results({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
  });

  factory Results.fromJson(Map<String, dynamic> map) {
    return Results(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      status: map['status'] ?? '',
      species: map['species'] ?? '',
      type: map['type'] ?? '',
      gender: map['gender'] ?? '',
      origin: List.from(json['origin']).map((e) => Origin.
      fromJson(e)).toList(),

    );
  }

  
}
class Origin {
    final String name;
    final String url;

  Origin(required.this.name, required.this.url);

  factory Origin.fromJson(Map<String, dynamic> map) {
    return Origin(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }



/*

  {
  "info": {
    "count": 826,
    "pages": 42,
    "next": "https://rickandmortyapi.com/api/character/?page=2",
    "prev": null
  },
  "results": [
    {
      "id": 1,
      "name": "Rick Sanchez",
      "status": "Alive",
      "species": "Human",
      "type": "",
      "gender": "Male",
      "origin": {
        "name": "Earth",
        "url": "https://rickandmortyapi.com/api/location/1"
      },
      "location": {
        "name": "Earth",
        "url": "https://rickandmortyapi.com/api/location/20"
      },
      "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
      "episode": [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
        // ...
      ],
      "url": "https://rickandmortyapi.com/api/character/1",
      "created": "2017-11-04T18:48:46.250Z"
    },
    // ...
  ]
}
*/