import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

final String dogApiUrl = 'https://dog.ceo/api/breeds/image/random/20';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Future<List<String>> getDogs() async {
    final List<String> dogs = <String>[];
    final Response response = await http.get(Uri.parse(dogApiUrl));
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    jsonResponse['message'].forEach((dogImageUrl) => dogs.add(dogImageUrl));
    return dogs;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Dogs',
      home: Scaffold(
        appBar: AppBar(title: Text('Random Dogs Demo')),
        body: FutureBuilder(
          future: getDogs(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
              case ConnectionState.active:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Image(
                        image: NetworkImage(snapshot.data[index]),
                      ),
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }
}