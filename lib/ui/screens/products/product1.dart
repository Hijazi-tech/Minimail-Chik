import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jd_ui/Widgets/productCardWidget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static String routName = '/ProductScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
            CardWidget(
              image: 'images/hinger.png',
              text: 'Season Sale \n Up to 70%',
              height: 200,
              width: double.infinity,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardWidget(
                    image: 'images/hinger.png',
                    height: 150,
                    width: 150,
                    text: '',
                  ),
                ),
                Stack(
                  children: [
                    CardWidget(
                      image: 'images/hinger.png',
                      height: 150,
                      width: 150,
                      text: '',
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 150,
                        width: 150,
                        color: Colors.black54,

                      ),
                    ),
                    Positioned(
                      top: 63,
                        left: 65,


                        child: Text('SHOP \n HATS',style: TextStyle(fontSize:17,color: Colors.white),))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardWidget(
                    image: 'images/hinger.png',
                    height: 150,
                    width: 150,
                    text: '',
                  ),
                ),
                CardWidget(
                  image: 'images/hinger.png',
                  height: 150,
                  width: 150,
                  text: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
