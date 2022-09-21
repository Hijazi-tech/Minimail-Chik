 // ignore_for_file: prefer_const_constructors

 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jd_ui/routes.dart';
import 'package:jd_ui/ui/screens/login_signupscreen.dart';
import 'package:jd_ui/ui/screens/signup_screen.dart';

import 'splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: routes,

      );
  }
}