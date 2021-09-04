import 'package:flutter/material.dart';
import 'package:location/location.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _isLoading = true;
  getUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    print(_locationData);
    return _locationData;
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    await getUserLocation();

    super.didChangeDependencies();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(children: [
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
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff3C7C31)),
                      onPressed: () {},
                      child: Text("MY USAGE"))),
              Positioned(
                  top: 330,
                  right: 80,
                  left: 80,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff3C7C31)),
                      onPressed: () {},
                      child: Text("BUILDING USAGE")))
            ]),
    );
  }
}
