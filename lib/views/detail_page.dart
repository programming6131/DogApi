import 'package:dog_app/widgets/body.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String url;
  const DetailPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Body(url: url,),
    );
  }
}
