
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

final String dogApiUrl = 'https://dog.ceo/api/breeds/image/random/20';
final String dogNames = "https://dog.ceo/api/breeds/list/all";

class ApiService {
   Future<List<String>> getDogs() async {
    final List<String> dogs = <String>[];
    final Response response = await http.get(Uri.parse(dogApiUrl));
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    jsonResponse['message'].forEach((dogImageUrl) => dogs.add(dogImageUrl));
    return dogs;
  }
   Future<List<String>> getDogName() async {
    final List<String> dogs = <String>[];
    final Response response = await http.get(Uri.parse(dogNames));
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    jsonResponse['message'][0].forEach((dogImageUrl) => dogs.add(dogImageUrl));
    return dogs;
  }
}
