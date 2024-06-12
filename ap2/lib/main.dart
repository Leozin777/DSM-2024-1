import 'package:ap2/data/services/character_service.dart';
import 'package:flutter/material.dart';

import 'data/models/character.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CharacterService service = CharacterService();
  late Future<List<Character>> c_characters;
  late Future<List<Character>> c_charactersFiltered;

  @override
  void initState() {
    super.initState();
    c_characters = service.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: FutureBuilder(
            future: c_characters,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(snapshot.data![index].name), leading: Image.network(snapshot.data![index].image),);
                    },
                    separatorBuilder: (context, int) {
                      return const Divider();
                    },
                    itemCount: snapshot.data!.length);
              }

              if(snapshot.hasError) return const Text("Erro ao buscar dados");

              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
