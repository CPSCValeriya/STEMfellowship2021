import 'package:flutter/material.dart';
import 'package:myapp/screens/SecondScreen.dart';
import 'package:myapp/screens/ValidationScreen.dart';

class DeciderScreen extends StatefulWidget {
  const DeciderScreen({Key? key}) : super(key: key);

  @override
  _DeciderScreenState createState() => _DeciderScreenState();
}

class _DeciderScreenState extends State<DeciderScreen> {
  bool userHasBuilding = true;
  @override
  Widget build(BuildContext context) {
    if (userHasBuilding) {
      return SecondScreen();
    } else {
      return ValidationScreen();
    }
  }
}
