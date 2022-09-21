
import 'package:flutter/material.dart';
import 'package:jd_ui/splashscreen.dart';
import 'package:jd_ui/ui/screens/account_detail/myaccount.dart';
import 'package:jd_ui/ui/screens/carts/Cart(1).dart';
import 'package:jd_ui/ui/screens/carts/Cart(2).dart';
import 'package:jd_ui/ui/screens/home_page.dart';
import 'package:jd_ui/ui/screens/login_screen.dart';
import 'package:jd_ui/ui/screens/login_signupscreen.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_2.dart';
import 'package:jd_ui/ui/screens/productinfo/product_info_3.dart';
import 'package:jd_ui/ui/screens/productinfo/productinfo1.dart';
import 'package:jd_ui/ui/screens/products/product1.dart';
import 'package:jd_ui/ui/screens/products/product_2.dart';
import 'package:jd_ui/ui/screens/shopping/shopping.dart';
import 'package:jd_ui/ui/screens/signup_screen.dart';
import 'package:jd_ui/ui/wish_list/home_explore.dart';
import 'package:jd_ui/ui/wish_list/home_explore2.dart';
import 'package:jd_ui/ui/wish_list/wishlist.dart';

final Map<String, WidgetBuilder> routes={
  login_Signup_Screen.routName: (context)=>login_Signup_Screen(),
  LoginScreen.routName: (context) => LoginScreen(),
  SignUpScreen.routName: (context)=> SignUpScreen(),
  HomePage.routName: (context) => HomePage(),
  MyAccount.routName: (context) => MyAccount(),
  ShoppingScreen.routName: (context) => ShoppingScreen(),
  CartScreen.routName: (context) => CartScreen(),
  Cart2Screen.routName: (context) => Cart2Screen(),
  ProductInfo1.routName: (context) => ProductInfo1(),
  ProductInfo2.routName: (context) => ProductInfo2(),
  ProductInfo3.routName: (context) => ProductInfo3(),
  ProductScreen.routName: (context) => ProductScreen(),
  Products_2.routName: (context) => Products_2(),
  HomeExploreScreen.routName: (context) => HomeExploreScreen(),
  HomeExploreScreen2.routName: (context) => HomeExploreScreen2(),
  WishList.routName: (context) => WishList(),
  SplashScreen.routName: (context) => SplashScreen(),


};