import 'package:flutter/material.dart';

class instagramApp extends StatelessWidget {
  const instagramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Text(
            "instagram",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Usar Name"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Forgot Password ?',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
          SizedBox(
            height: 25,
          ),
          SizedBox(
              width: 370,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  ))),
          SizedBox(
            height: 18,
          ),
          Text('----------------OR----------------'),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 50),
            child: ListTile(
              leading: Icon(
                Icons.facebook_sharp,
                color: Colors.blue,
              ),
              title: Text(
                'Log in With FaceBook',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
