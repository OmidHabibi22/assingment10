import 'dart:html';

import 'package:flutter/material.dart';
import 'package:new_project/CalculatorApp.dart';
import 'package:new_project/FaceBookPage.dart';
import 'package:new_project/Home.dart';
import 'package:new_project/InstagramPage.dart';
import 'package:new_project/aboutPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ButtonPage(),
  ));
}

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
                child: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 80.0,
                  weight: 10.0,
                )),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FaceBookPage()),
                  );
                },
                child: Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 80.0,
                  weight: 10.0,
                )),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const instagramApp()),
                  );
                },
                child: Icon(
                  Icons.linked_camera_outlined,
                  color: Colors.white,
                  size: 80.0,
                  weight: 10.0,
                )),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));
                },
                child: Icon(
                  Icons.calculate_outlined,
                  color: Colors.white,
                  size: 80.0,
                  weight: 10.0,
                )),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          "Assignment Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
