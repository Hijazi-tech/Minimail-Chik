// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../home_page.dart';

class ProductInfo3 extends StatelessWidget {
  const ProductInfo3({Key? key}) : super(key: key);
  static String routName = '/ProductInfo3';

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
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/purse.png'),
                    fit: BoxFit.cover,
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 222,
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
            Padding(
              padding: const EdgeInsets.all(30.0),
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
                      Text('Leather Backpack'),
                      Text(
                        '\$289',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 82,
                  ),
                  Icon(Icons.logout_sharp),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 18,right: 230,bottom: 10),
              child: Text('Descrition :',style: TextStyle(fontSize: 22),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 59),
              child: Text(' Stockholm-based brand Backup Co has \n creted this comfortable,stylish bag from fine \n italian leather. Waterproof,large with many \n pocket this backup is perfact for \n adventurous fashionistas'),
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 175),
              child: Text('Size and Fit Information :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 35,top: 15),
             child: Row(
               children: [
                 Text('Depth 18cm',style: TextStyle(fontSize: 15),),
                 SizedBox(width: 22,),
                 Text('Hight 46cm',style: TextStyle(fontSize: 15),),
                 SizedBox(width: 22,),
                 Text('Width 37cm',style: TextStyle(fontSize: 15),),
               ],
             ),
            ),
            SizedBox(
              height: 5,
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
