// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/home_page.dart';
import 'package:jd_ui/ui/screens/signup_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routName = "/LoginScreen";

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    final formkey = GlobalKey();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    top: -170,
                    child: Image(image: AssetImage('images/fullpic.png'))),
                Positioned(
                  top: 170,
                  left: 101,
                  child: Text(
                    'Minimal Chic',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 358.0,
                          left: 19,
                          right: 30,
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: 'Email',
                            hintText: 'you@email.com',
                            icon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //password
            Padding(
              padding: const EdgeInsets.only(top: 38.0, left: 19, right: 30),
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'password',
                  hintText: 'Enter your password',
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(
              height: 52,
            ),
            //login
            Container(
              height: 50,
              width: 290,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: password);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }

                },
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, top: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'DONT HAVE AN ACCOUNT YET?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
