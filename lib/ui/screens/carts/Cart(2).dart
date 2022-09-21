// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jd_ui/Widgets/cart2cardwidget.dart';
import 'package:jd_ui/ui/screens/home_page.dart';

class Cart2Screen extends StatelessWidget {
  const Cart2Screen({Key? key}) : super(key: key);
  static String routName = '/Cart2Screene';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Minimal Chic',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.routName);
              },
              child: Text(
                'Done',
                style: TextStyle(fontSize: 16, color: Colors.red),
              )),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              Cart2CardWidget(
                  uppertext: 'Leather \nBackPacks',
                  lowertext: 'One Size \nOne Color',
                  image: 'images/purse.png'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              Cart2CardWidget(
                  uppertext: 'Suede Black \nBackPacks',
                  lowertext: 'One Size \nOne Color',
                  image: 'images/purse.png'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              Cart2CardWidget(
                  uppertext: 'Cashmere \nLong Coat',
                  lowertext: 'S (36 EU) \nBrown',
                  image: 'images/hinger.png'),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1.0, right: 249),
                  child: Text('Promo code'),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('Total:          '),
                            Text(
                              '      \$1908',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('  Free Shopping with \$200'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65,
          ),
          Container(
            height: 50,
            width: 358,
            decoration: BoxDecoration(
              color: Colors.black87,
              // borderRadius: BorderRadius.circular(30),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CHECKOUT',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
