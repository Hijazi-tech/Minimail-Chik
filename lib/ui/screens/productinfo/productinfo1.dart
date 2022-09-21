// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../home_page.dart';

class ProductInfo1 extends StatelessWidget {
  const ProductInfo1({Key? key}) : super(key: key);
  static String routName = '/ProductInfo1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product info',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(HomePage());
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [Icon(Icons.shopping_basket_sharp)],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 390,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/hinger.png'),
                    fit: BoxFit.cover,
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 22,
                    left: 309,
                    child: Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(111),
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                    top: 339,
                    left: 154,
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.grey,
                          size: 10,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(Icons.circle, color: Colors.red, size: 10),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(Icons.circle, color: Colors.grey, size: 10),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Column(
                    children: [
                      Text('Woal! Board Cream Cont'),
                      Text(
                        '\$399',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Icon(Icons.logout_sharp),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  height: 46,
                  width: 111,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        '+5',
                        style: TextStyle(fontSize: 21),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 42,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 74,
                ),
                Text(
                  'Color :',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 40,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.circle, color: Colors.red, size: 40),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              children: [
                Container(
                  height: 63,
                  width: 97,
                  color: Colors.black,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 21, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 42,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 63,
                  width: 260,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    'ADD TO CART',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
