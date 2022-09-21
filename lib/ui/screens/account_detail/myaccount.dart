// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jd_ui/ui/wish_list/wishlist.dart';


class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);
  static String routName = '/MyAccount';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "My Account",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 490,
            child: Stack(
              children: [
                Positioned(
                    top: -95,
                    left: 10,
                    child: Image(
                      image: AssetImage('images/upperpart.png'),
                      height: 640,
                    )),
              ],
            ),
          ),
          SizedBox(
              height: 110,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 218.0, top: 43),
                    child: Text(
                      'Matlida Eve Lee',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Text(
                          'New York, New York',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Edit Account',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, WishList.routName);
                },
                child: Text(
                  'WISHLIST (14)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
