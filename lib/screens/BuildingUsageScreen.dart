import 'package:flutter/material.dart';
import 'package:myapp/charts/MyUsageChart.dart';
import 'package:myapp/charts/StackedAreaLine.dart';
import 'package:myapp/data/SampleData.dart';

class BuildingUsageScreen extends StatefulWidget {
  const BuildingUsageScreen({Key? key}) : super(key: key);

  @override
  _BuildingUsageScreenState createState() => _BuildingUsageScreenState();
}

class _BuildingUsageScreenState extends State<BuildingUsageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/3.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Current Charge: 35\$"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Current Fee: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Current Credit: "),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
