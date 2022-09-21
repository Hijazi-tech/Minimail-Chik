import 'package:flutter/material.dart';

class Cart2CardWidget extends StatelessWidget {
  Cart2CardWidget({
    required this.uppertext,
    required this.lowertext,
    required this.image,
    Key? key,
  }) : super(key: key);
  String image;
  String uppertext;
  String lowertext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: 252,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  uppertext,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  lowertext,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: 41,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Qnt:',),
                SizedBox(
                  height: 7,
                ),
                Text('1',style: TextStyle(fontWeight: FontWeight.bold),),
              ],),

          ],
        ),
      ),
    );
  }
}
