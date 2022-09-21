// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/home_page.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);
  static String routName = '/WishList';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlist',
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
      backgroundColor: Colors.grey.shade300,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 22),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image(
                        image: AssetImage('images/purse.png'),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 00,
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: -7,
                      left: 110,
                      child: Container(
                        height: 40,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red),
                        child: Icon(
                          Icons.shopping_basket_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 10,right: 5),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image(
                        image: AssetImage('images/purse.png'),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 00,
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: -7,
                      left: 110,
                      child: Container(
                        height: 40,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red),
                        child: Icon(
                          Icons.shopping_basket_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 29.0, top: 35),
                child: Column(
                  children: [
                    Text(
                      'Cray Backpack',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$89',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 39.0, top: 35),
                child: Column(
                  children: [
                    Text(
                      'Leather Backpack',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$289',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 22),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image(
                        image: AssetImage('images/purse.png'),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 00,
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: -9,
                      left: 110,
                      child: Container(
                        height: 40,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red),
                        child: Icon(
                          Icons.shopping_basket_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image(
                        image: AssetImage('images/purse.png'),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 00,
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      top: -9,
                      left: 110,
                      child: Container(
                        height: 40,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red),
                        child: Icon(
                          Icons.shopping_basket_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 29.0, top: 30),
                child: Column(
                  children: [
                    Text(
                      'Cray Backpack',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$99',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 39.0, top: 30),
                child: Column(
                  children: [
                    Text(
                      'Leather Backpack',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$599',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
