
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCardWidget extends StatelessWidget {
  ShoppingCardWidget({required this.image, required this.height,required this.width,
    Key? key,
  }) : super(key: key);
  String image;
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

            ),),);
  }
}
class ContainerShpWidget extends StatelessWidget {
  ContainerShpWidget({required this.text,required this.color,required this.textclr,

    Key? key,
  }) : super(key: key);
  String text;
  Color color;
  Color textclr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: textclr),
        )),
    );
  }
}
