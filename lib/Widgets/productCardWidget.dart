
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    required this.text,required this.image, required this.height,required this.width,
    Key? key,
  }) : super(key: key);
  String image;
  String text;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 11,top: 10,right: 6),
        child: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,

              ),
            ),
            child: Text(text,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)));
  }
}