import 'package:flutter/material.dart';

class NavigationRouter {
  static void switchToFeature(BuildContext context) {
    Navigator.pushNamed(context, "/FeatureScreen");
  }
  static void switchToLoginOption(BuildContext context) {
    Navigator.pushNamed(context, "/Loginoptionsscreen");
  }
  static void switchToTabSignUpIN(BuildContext context) {
    Navigator.pushNamed(context, "/tab_for_signup");
  }

}
