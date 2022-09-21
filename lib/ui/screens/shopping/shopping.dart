// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_ui/Widgets/ShoppingCardWidget.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_2.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_3.dart';
import 'package:jd_ui/ui/screens/productinfo/productinfo1.dart';
import 'package:jd_ui/ui/screens/products/product1.dart';
import 'package:jd_ui/ui/wish_list/home_explore.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);
  static String routName = '/ShoppingSCreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          Icon(
            Icons.shop,
            color: Colors.white,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  Column(

                    children: [
                      SizedBox(height: 11,),
                      Text(
                        'SORT ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('New in ', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    width: 93,
                  ),
                  Column(
                    children: [
                      Text(
                        'Shop Bags ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('21 items ', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, HomeExploreScreen.routName);
                    },
                    child: ContainerShpWidget(
                      text: 'all',
                      color: Colors.black38,
                      textclr: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ProductInfo3.routName);
                    },
                    child: ContainerShpWidget(
                      text: 'Backpacks',
                      color: Colors.white,
                      textclr: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 11,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ProductScreen.routName);
                    },
                    child: ContainerShpWidget(
                      text: 'Shoulder Bags',
                      color: Colors.white,
                      textclr: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 3.0,top: 39,right: 3),
              child: Row(
                children: [
                  ShoppingCardWidget(image: 'images/purse.png', height: 165, width: 160),
                  ShoppingCardWidget(image: 'images/purse.png', height: 160, width: 160),
                ],
              ),
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 39.0, top: 33),
                  child: Column(
                    children: [
                      Text(
                        'Leather tote',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$189',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 99.0, top: 33),
                  child: Column(
                    children: [
                      Text(
                        'Leather Backpack',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$289',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.only(left: 3.0,top: 39,right: 3),
              child: Row(
                children: [
                  ShoppingCardWidget(image: 'images/purse.png', height: 160, width: 160),
                  ShoppingCardWidget(image: 'images/purse.png', height: 160, width: 160),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
