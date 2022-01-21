import 'package:dog_app/constants/constants.dart';
import 'package:flutter/material.dart';

class DogTitleWithImage extends StatelessWidget {
  const DogTitleWithImage({
    Key? key,
    required this.url,
    required this.name
  }) : super(key: key);

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(
              "Name",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black12, fontWeight: FontWeight.bold),
            ),
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: kDefaultPaddin),
            Container(
              child: Hero(
                tag: "${url}",
                child: Image.network(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}