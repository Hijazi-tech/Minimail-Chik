// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_ui/Widgets/cartWidgst.dart';
import 'package:jd_ui/ui/screens/carts/Cart(2).dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routName = '/CArtScreen';

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
          'Your Cart(3)',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
        actions: [
         TextButton(
           onPressed: (){
             Navigator.pushNamed(context, Cart2Screen.routName);
           },
             child: Text('Edit',style: TextStyle(fontSize: 16,color: Colors.white),)),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          CartCardWidget(
              uppertext: 'Leather \nBackPacks',
              lowertext: 'One Size \nOne Color',
              lasttext: '\$399',
              image: 'images/purse.png'),
          CartCardWidget(
              uppertext: 'Suede Black \nBackpack',
              lowertext: 'One Size \nOne Color',
              lasttext: '\$599',
              image: 'images/purse.png'),
          CartCardWidget(
              uppertext: 'Cashmere \nLong Coat',
              lowertext: 'S (36 EU) \nBrown',
              lasttext: '\$910',
              image: 'images/hinger.png'),

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
                  height: 15,
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
            height: 55,
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
