import 'package:dog_app/constants/constants.dart';
import 'package:dog_app/widgets/title_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String url;
final String name;
  const Body({Key? key, required this.url,required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: DogTitleWithImage(url: url,name: name,),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}