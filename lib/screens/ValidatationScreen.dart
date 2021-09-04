import 'package:flutter/material.dart';
import 'package:myapp/screens/SecondScreen.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({Key? key}) : super(key: key);

  @override
  _ValidationScreenState createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Enter your building key"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLength: 8,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Enter your building key",
                fillColor: Colors.white70),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SecondScreen();
              }));
            },
            child: Text("Done"))
      ],
    ));
  }
}
