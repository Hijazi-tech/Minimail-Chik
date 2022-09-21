// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/carts/Cart(1).dart';
import 'package:jd_ui/ui/screens/login_signupscreen.dart';
import 'package:jd_ui/ui/screens/products/product_2.dart';
import 'package:jd_ui/ui/screens/shopping/shopping.dart';
import 'package:jd_ui/ui/wish_list/home_explore.dart';


import 'account_detail/myaccount.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        width: 230,
        child: Drawer(
          child: Container(
            color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 78.0,
                      left: 19,
                      right: 30,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          focusColor: Colors.black,
                          hoverColor: Colors.black,
                          labelText: 'Search',
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, HomeExploreScreen.routName);
                    },
                    child: Text(
                      'Home Page',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      // borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, ShoppingScreen.routName);

                      },
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Shop Product',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyAccount.routName);
                    },
                    child: Text(
                      'My Account',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, CartScreen.routName);
                    },
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, Products_2.routName);
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),

                  SizedBox(
                    height: 33,
                  ),
                  TextButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushNamedAndRemoveUntil(context, login_Signup_Screen.routName, (route) => false);
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
