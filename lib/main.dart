import 'package:flutter/material.dart';

void main() {
  runApp(MyBusinessCard());
}

class MyBusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        // backgroundColor: Colors.lightBlue[50],
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.lightBlue[50],
                ),
              ),
              Text('My Card'),
              Positioned(
                top: 150,
                left: 120,
                height: 250.0,
                width: 250.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                      image: AssetImage('images/mini-7.jpg'),
                    )),
                  ),
                  // color: Color(0xffFF0E58),
                  // child: Image.asset('images/mini-7.jpg',),
                ),
              ),
              Positioned(
                top: 500,
                left: 150,
                height: 50.0,
                width: 200.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), //or 15.0
                  child: Container(
                    color: Colors.green,
                  ),
                  // color: Color(0xffFF0E58),
                  // child: Image.asset('images/mini-7.jpg',),
                ),
              ),
              Positioned(
                top: 700,
                left: 150,
                height: 50.0,
                width: 200.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0), //or 15.0
                  child: Container(
                    color: Colors.redAccent,
                  ),
                  // color: Color(0xffFF0E58),
                  // child: Image.asset('images/mini-7.jpg',),
                ),
              )
            ],
          ),
          // body: Stack(
          //       children: [
          //         Text('Text 1'),
          //       ],
        ),
      ),
    );
  }
}
