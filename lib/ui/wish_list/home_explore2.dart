// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/home_page.dart';

class HomeExploreScreen2 extends StatelessWidget {
  const HomeExploreScreen2({Key? key}) : super(key: key);
  static String routName = '/HomeExporeScreen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Minimal Chic',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.shopping_basket_sharp)],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -51,
            left: 11,
            right: 11,
            bottom: -11,
            child: Container(
              height: 999,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage('images/fullpic.png'),
                  fit: BoxFit.cover,

              ),
              ),
            ),
          ),
          Positioned(
              top: 219,
              left: 107,
              right: 3,
              bottom: 34,
              child: Text(
                'SEASON SALE',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 249,
              left: 132,
              right: 43,
              bottom: 34,
              child: Text(
                'up to 70%',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          Positioned(
            top: 309,
            left: 88,
            child: Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Colors.red,
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, HomePage.routName);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SHOPSALE ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
