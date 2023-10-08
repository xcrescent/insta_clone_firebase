import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_firebase/firebase_options.dart';
import 'package:insta_clone_firebase/responsive/mobile_screen_layout.dart';
import 'package:insta_clone_firebase/responsive/responsive_layout_screen.dart';
import 'package:insta_clone_firebase/responsive/web_screen_layout.dart';
import 'package:insta_clone_firebase/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Insta());
}

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: AppColors.mobileBackground,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: const ResponsiveLayoutScreen(
        mobile: MobileScreenLayout(),
        web: WebScreenLayout(),
      ),
    );
  }
}
