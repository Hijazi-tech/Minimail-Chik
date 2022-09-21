// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jd_ui/ui/screens/home_page.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  static String routName = '/SignupScreen';
  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var confirmPass;
    String email = '';
    String password = '';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(LoginScreen);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 68.0,
                      left: 49,
                      right: 40,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter user name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 38.0,
                      left: 49,
                      right: 40,
                    ),
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'you@email.com',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 28.0, left: 49, right: 40),
                    child: TextFormField(
                      onChanged: (value) {
                        password = value;
                      },
                      obscureText: true,
                      validator: (value) {
                        confirmPass = value;
                        if (value!.isEmpty) {
                          return "Please Enter New Password";
                        } else if (value.length < 8) {
                          return "Password must be atleast 8 characters long";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'password',
                        hintText: '',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 28.0, left: 49, right: 40),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Re-Enter New Password";
                        } else if (value.length < 8) {
                          return "Password must be atleast 8 characters long";
                        } else if (value != confirmPass) {
                          return "Password must be same as above";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Repeat password',
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 290,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    Navigator.pushNamed(context, HomePage.routName);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, top: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ALREADY HAVE AN ACCOUNT?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routName);
                    },
                    child: Text(
                      'SIGN IN',
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
