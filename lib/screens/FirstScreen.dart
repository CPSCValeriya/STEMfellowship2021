import 'package:flutter/material.dart';

import 'package:myapp/screens/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/screenOne.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 270,
            right: 80,
            left: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff3C7C31)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text("MY BUILDING")))
      ]),
    );
  }
}
