import 'package:flutter/material.dart';

class RemoveScrollGlow extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
