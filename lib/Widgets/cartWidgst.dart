// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CartCardWidget extends StatelessWidget {
  CartCardWidget({
    required this.uppertext,
    required this.lowertext,
    required this.image,
    required this.lasttext,
    Key? key,
  }) : super(key: key);
  String image;
  String uppertext;
  String lowertext;
  String lasttext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 130,
        width: 352,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
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
              width: 51,
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


            SizedBox(
              width: 41,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('price:',),
                SizedBox(
                  height: 7,
                ),
                Text(lasttext,style: TextStyle(fontWeight: FontWeight.bold),),
              ],),
          ],
        ),
      ),
    );
  }
}
