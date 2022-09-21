// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_2.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_3.dart';
import 'package:jd_ui/ui/screens/productinfo/productinfo1.dart';

import 'home_explore2.dart';

class HomeExploreScreen extends StatelessWidget {
  const HomeExploreScreen({Key? key}) : super(key: key);
  static String routName = '/HomeExporeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, ProductInfo2.routName);
                      },
                      child: Container(
                        height: 220,
                        width: 160,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Image(image: AssetImage('images/hinger.png')),
                            Positioned(
                                top: 125,
                                left: 28,
                                right: 43,
                                bottom: 34,
                                child: Text(
                                  'CASHMORE & \n       SILK',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, ProductInfo3.routName);
                      },
                      child: Container(
                        height: 210,
                        width: 160,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Image(image: AssetImage('images/purse.png')),
                            Positioned(
                                top: 72,
                                left: 62,
                                right: 43,
                                bottom: 34,
                                child: Text(
                                  'SHOP ',
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                top: 88,
                                left: 38,
                                right: 3,
                                bottom: 34,
                                child: Text(
                                  'LEATHER BAGS ',
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: Container(
                  height: 455,
                  width: 170,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(

                            image: AssetImage('images/fullpic.png'),
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                      Positioned(
                          top: -95,
                          left: 36,
                          right: 33,
                          bottom: 34,
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, HomeExploreScreen2.routName);
                            },
                            child: Text(
                              'SALE% ',
                              style: TextStyle(color: Colors.black,
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )),

                      Positioned(
                        top: 182,
                        left: 40,
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            color: Colors.redAccent,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'SHOP ',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Stack(
              children: [
                Container(
                  height: 217,
                  width: 360,
                  color: Colors.white,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('images/hinger.png'),height: 44,
                  ),
                ),
                Positioned(
                    top: 118,
                    left: 112,
                    right: 3,
                    bottom: 34,
                    child: Text(
                      'EXPLORE DRESSES ',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//   Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     // borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         'Shop Product',
//                         style: TextStyle(color: Colors.white),
//                       )),
//                 ),
