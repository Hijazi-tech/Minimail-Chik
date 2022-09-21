// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Products_2 extends StatelessWidget {
  const Products_2({Key? key}) : super(key: key);
  static String routName = '/Products_2';

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
              padding: const EdgeInsets.only(
                top: 38.0,
                left: 19,
                right: 30,
              ),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    //  labelText: 'Search',
                    hintText: 'Search Products',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),

                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              'Shop Products',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              '1080 items',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              'New in',
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'TOPS',
              style: TextStyle(fontSize: 16, ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'SKIRTS & TROUSERS',
              style: TextStyle(fontSize: 16, ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'DRESSES',
              style: TextStyle(fontSize: 16, ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'OUTERWEAR',
              style: TextStyle(fontSize: 16, ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'SHOES',
              style: TextStyle(fontSize: 16,),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'BAGS',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'ACCESSORIES',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              'SALE%',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
