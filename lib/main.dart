import 'package:dog_app/services/request.dart';
import 'package:dog_app/views/home_page.dart';
import 'package:flutter/material.dart';

void main()async{
 names = await getAllNames();
runApp(new MyApp());
} 
  List<String> names = [];
    Future<List<String>> getAllNames()async{
 var  fetchednames =   await ApiService().getDogName();
    return  fetchednames;
    }
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Dogs',
      home: HomePage()
    );
  }
}
