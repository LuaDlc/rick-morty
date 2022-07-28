import 'dart:html';

class DetailedApp {
  //detalhes dos personagens

  final  int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final List<Origin> origins;
  final List<Location> locations;
  final String image;
  final String episode;
  final String url;
  final int created;

  DetailedApp({
   
    required this.created,
    required this.url,
    required this.image,
    required this.gender,
    required this.type,
    required this.species,
    required this.status,
    required this.name,
    required this.id,
    this.origins = const [],
    required this.episode,
    this.locations = const [],


  });

  factory DetailedApp.fromJson(Map<String, dynamic> json) {
    return DetailedApp(
      id: json['id'],
      url: json['url'],
      image: json['image'],
      gender: json['gender'],
      type: json['type'],
      species: json['species'],
      status: json['status'],
      name: json['name'],
      created: json['created'],
      origins: List.from(json['origins']).map((e) => Origin.
      fromJson(e)).toList(),
      episode: json['episode'],
      locations: List.from(json['locations']).map((e) => Location.
      fromJson(e)).toList(),

      
    );

  }


}

class Origin {
    final String name;
    final String url;

  Origin({required this.name, required this.url});

  factory Origin.fromJson(Map<String, dynamic> map) {
    return Origin(
      name: map['name']?.toString() ?? '',
      url: map['url']?.toString() ?? '',
      );
  }

  

  }

  class Location {
    final String name;
    final String url;

  Location({required this.name, required this.url});

  factory Location.fromJson(Map<String, dynamic> map) {
    return Location(
      name: map['name']?.toString() ?? '',
      url: map['url']?.toString() ?? '',
      

    );
  }
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