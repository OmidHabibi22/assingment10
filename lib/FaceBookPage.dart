import 'package:flutter/material.dart';

class FaceBookPage extends StatefulWidget {
  const FaceBookPage({Key? key}) : super(key: key);

  @override
  State<FaceBookPage> createState() => _FaceBookPageState();
}

class _FaceBookPageState extends State<FaceBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1633675254053-d96c7668c3b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
              fit: BoxFit.cover,
            ),
            height: 200,
            width: double.infinity,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Phone Number Or Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              obscureText: true,
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
          ),
          SizedBox(
            width: 350.0,
            height: 50.0,
            child: ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Forgot Password ?",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          SizedBox(height: 20.0),
          Text(
            "Back",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          SizedBox(height: 40.0),
          Text(
            "-------------OR-------------",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 60.0),
          SizedBox(
            width: 350.0,
            height: 50.0,
            child: ElevatedButton(
              child: Text(
                "Create New Account",
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signUpPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Stack(
        children: [
          Center(
            child: Container(
                height: 670,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(76, 20, 40, 500),
                      child: Image.asset(
                        "images/Habibi.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 165, 40, 300),
                      child: Container(
                        width: 600,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "User Name",
                            labelText: "User Name",
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 250, 40, 300),
                      child: Container(
                        width: 600,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            labelText: "Email",
                            icon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 335, 40, 0),
                      child: Container(
                        width: 600,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            labelText: "Password",
                            icon: Icon(Icons.key),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 420, 40, 0),
                      child: Container(
                        width: 600,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            icon: Icon(Icons.key),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(135, 550, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("SING UP"),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
