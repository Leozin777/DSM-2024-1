import 'dart:convert';
import 'package:ap2/data/constants.dart';
import 'package:http/http.dart' as http;
import '../models/location.dart';

class LocationService {

  Future<List<Location>> getLocations() async {
    final response = await http.get(Uri.parse('$BASE_URL/location'));

    if(response.statusCode == 200){
      List jsonResponse = json.decode(response.body)['results'];
      return jsonResponse.map((location) => Location.fromJson(location)).toList();
    }else{
      throw Exception('Erro ao buscar as localizações');
    }
  }
}