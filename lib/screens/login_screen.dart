import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone_firebase/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        width: double.infinity,
        child: Column(
          children: [
            // svg image
            SvgPicture.asset(
              'assets/icons/ic_instagram.svg',
              color: AppColors.primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 64,
            ),
          ],
        ),
      ),
    ));
  }
}
