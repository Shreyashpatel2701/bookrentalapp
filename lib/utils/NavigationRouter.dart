import 'package:flutter/material.dart';

class NavigationRouter {
  static void switchToFeature(BuildContext context) {
    Navigator.pushNamed(context, "/FeatureScreen");
  }
  static void switchToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/Loginoptionsscreen");
  }
}
