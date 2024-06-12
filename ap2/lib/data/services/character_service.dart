import 'dart:convert';

import 'package:ap2/data/models/character.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';

class CharacterService {
  Future<List<Character>> getCharacters() async {
    final response = await http.get(Uri.parse('$BASE_URL/character'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['results'];
      return jsonResponse
          .map((character) => Character.fromJson(character))
          .toList();
    } else {
      throw Exception('Erro ao buscar os personagens');
    }
  }
}
