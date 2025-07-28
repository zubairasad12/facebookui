import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Text(
        "facebook",
        style: TextStyle(fontSize: 30, color: Colors.blueAccent),
      ),
      SizedBox(height: 30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Enter Email or Phone",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(height: 15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Enter Password",

            border: OutlineInputBorder(),
          ),
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              print('Login button pressed');
            },
            child: Text(
              'Log In',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          print("Forgot Password pressed");
        },
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              print("Create New Account pressed");
            },
            child: Text(
              'Create New Account',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      SizedBox(height: 40),
      Text(
        "Meta © 2025",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    ],
      )

    );

  }
}
