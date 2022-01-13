import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bookrentalapp/utils/NavigationRouter.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 5), () => NavigationRouter.switchToFeature(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                  Image(
                  image: AssetImage('assets/images.jpg'),
                  height: 100.0,
                  ),
                  Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  ),
                  Text(
                  "Book Rental App",
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
                  )
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}