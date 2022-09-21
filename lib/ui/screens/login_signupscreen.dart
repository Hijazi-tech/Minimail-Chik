// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:jd_ui/costanants.dart';
import 'package:jd_ui/ui/screens/login_screen.dart';
import 'package:jd_ui/ui/screens/signup_screen.dart';

class login_Signup_Screen extends StatelessWidget {
  const login_Signup_Screen({Key? key}) : super(key: key);
  static String routName="/login_signup_screen";
  @override
  Widget build(BuildContext context) {
   MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kbackground,
      body: SizedBox(
        height: 1000,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/fullpic.png',),
                      fit: BoxFit.cover,
                      scale: 22,
                    ),
                  ),
              ),
            ),
            Positioned(
              top: 500,
              left: 100,
              right: 20,
              bottom: 00,
              child: Text(
                'Minamial Chic',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 00,
              top: 730,
              right: -18,
              left: -3,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.black,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, LoginScreen.routName);},
                        child: Center(
                            child: Text(
                          'LOG IN',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: 150,
                      color: Colors.red,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignUpScreen.routName);},
                        child: Center(
                            child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
