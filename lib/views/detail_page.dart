import 'package:dog_app/widgets/body.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String url;
  final String name;
  const DetailPage({Key? key, required this.url,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Body(url: url,name: name,),
    );
  }
}
