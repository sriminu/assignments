import 'dart:async';


import 'package:assignments/profileui.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SpalshScreen()));
}

class SpalshScreen extends StatefulWidget {
  @override
  _Spalashscreen createState() => _Spalashscreen();
}

class _Spalashscreen extends State {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ProfileUI()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///set color for screen background
        //color: Colors.lightGreen,
        ///set image for screen background
        //decoration: BoxDecora
        ///image: const DecorationImage(
        //fit: BoxFit.cover,
        //image: AssetImage('assets/images/back image.jpeg'))),
        /// set gradiant for screen background
        decoration: BoxDecoration(color: Colors.deepOrangeAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://icon-library.com/images/facebook-icon-hd/facebook-icon-hd-19.jpg',),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'FACEBOOK',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
