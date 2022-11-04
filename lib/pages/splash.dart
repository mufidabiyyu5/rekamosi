import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rekamosi/pages/homepage.dart';
import 'package:rekamosi/pages/login.dart';
import 'package:rekamosi/pages/onboarding.dart';
import 'package:rekamosi/theme.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purplePrime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Logo_Splash.png',
              height: 24,
              width: 150,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Repository Aplikasi Monitoring Skripsi",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
