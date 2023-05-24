import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AboutPage(),
  ));
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: 500,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(150)),
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purpleAccent])),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 70, 50, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 98,
                        color: Colors.purple,
                      ),
                      radius: 50.0,
                    ),
                  ),
                ),
              )),
          Expanded(
            child: ListView(
              children: [
                Divider(),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    '     Name',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.person_2,
                    size: 30,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    '     BirthDay',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.celebration_outlined,
                    size: 30,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    '   Phone Number',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.phone_android,
                    size: 30,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    '   Instagram Account',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    '   Email Address',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.email_outlined,
                    size: 30,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    '     Password',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
