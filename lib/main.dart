import 'package:flutter/material.dart';
import 'Views/Intro_screen/Splashscreen.dart';
import 'Views/Intro_screen/FeatureScreen.dart';
import 'Views/Login_Sign_up_views/Loginoptionsscrren.dart';
import 'utils/loginsignuptab.dart';

var routes = <String, WidgetBuilder>{
  "/FeatureScreen": (BuildContext context) =>  FeatureScreen(),
  "/Loginoptionsscreen": (BuildContext context) => Loginoptionsscreen(),
  "/tab_for_signup": (BuildContext context) => tab_for_signup(),
};


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Book Rental App',
        theme: ThemeData(
          primaryColor: Colors.blue,
          primaryColorDark: Colors.blue,
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home:const SplashScreen(),
        routes: routes
    );
  }
}