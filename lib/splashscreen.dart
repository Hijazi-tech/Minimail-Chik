// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jd_ui/costanants.dart';
import 'package:jd_ui/ui/screens/login_signupscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routName = "/SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  splashScreenDelay()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushNamed(context, login_Signup_Screen.routName);
  }

  void initState(){
    super.initState();

    splashScreenDelay();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SpinKitSpinningLines(
              color: Colors.white,
              size: 111,
            ),
            SizedBox(height: 99,),


            Text(
              'Wellcome',
              style: TextStyle(fontSize: 29, color: Colors.white),
            ),
          ],
        ),


      ),


    );
  }
}
