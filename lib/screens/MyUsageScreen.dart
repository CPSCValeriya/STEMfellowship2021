import 'package:flutter/material.dart';
import 'package:myapp/charts/MyUsageChart.dart';
import 'package:myapp/charts/StackedAreaLine.dart';
import 'package:myapp/data/SampleData.dart';

class MyUsageScreen extends StatefulWidget {
  const MyUsageScreen({Key? key}) : super(key: key);

  @override
  _MyUsageScreenState createState() => _MyUsageScreenState();
}

class _MyUsageScreenState extends State<MyUsageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/Things_We_Can_Do_to_Help_the_Environment_9.png"),
          fit: BoxFit.cover
        ),
       ),
      ),
        Positioned(
          top: 220, left:5, right: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: MyUsageChart(createSampleData(), animate: true)
          ))),
        Align(
            alignment: Alignment(0,-0.8),
            child:
                Positioned(
                    child: Text("MY USAGE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, color: Color(0xff3C7C31), fontWeight: FontWeight.bold),)
                )
            )
      ],
      ),
      );
  }
}
