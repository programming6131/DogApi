import 'package:dog_app/constants/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
   String? url;
   String? name;
   VoidCallback? press;
   ItemCard({
    Key? key,
   required this.url,
   required this.press,
   required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${url}",
                child: Image.network(url!),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
             "$name!",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
        ],
      ),
    );
  }
}