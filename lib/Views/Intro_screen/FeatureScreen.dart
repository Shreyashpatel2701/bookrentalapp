import 'package:flutter/material.dart';
import 'OnbordingData.dart';
import 'flutteronboardingscreens.dart';

class FeatureScreen extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/feature1.jpg",
      title: "Buy / Sell",
      desc:
      "Buy or sell books at an affordable price, and donate books too if you have some.",
    ),
    OnbordingData(
      imagePath: "assets/feature2.jpg",
      title: "E-BOOKS",
      desc:
      "A library of bite-sized eBooks and access books in various languages and read anywhere, any devices.",
    ),
    OnbordingData(
      imagePath: "assets/feature3.jpg",
      title: "Keep reading",
      desc:
      "You’ll fall in love",
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      list,
      MaterialPageRoute(builder: (context) => FeatureScreen()),
    );
  }
}