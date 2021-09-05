import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:myapp/charts/StackedAreaLine.dart';
import 'package:myapp/data/SampleData.dart';
import 'package:myapp/screens/BuildingUsageScreen.dart';
import 'package:myapp/screens/MyUsageScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/screenTwo.png"),
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
                    return MyUsageScreen();
                  }));
                },
                child: Text("MY USAGE"))),
        Positioned(
            top: 330,
            right: 80,
            left: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff3C7C31)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BuildingUsageScreen();
                  }));
                },
                child: Text("BUILDING USAGE")))
      ]),
    );
  }
}
