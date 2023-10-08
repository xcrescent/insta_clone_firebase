import 'package:flutter/material.dart';
import 'package:insta_clone_firebase/utils/dimensions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  const ResponsiveLayoutScreen(
      {super.key, required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > Dimensions.webScreenSize) {
        return web;
      }
      return mobile;
    });
  }
}
