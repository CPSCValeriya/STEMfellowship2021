import 'package:flutter/material.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: StackedAreaLineChart(createSampleData(), animate: true),
          ),
        ),
      ),
    );
  }
}
