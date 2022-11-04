import 'package:flutter/material.dart';
import 'package:rekamosi/pages/login.dart';
import 'package:rekamosi/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Logo_Purple.png',
                    height: 24,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Onboarding_Pic.png',
                    height: 270,
                    width: 270,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Selamat Datang!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Tempat mencari topik skripsi untuk \n mahasiswa Ilmu Komputer UPI",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        purplePrime,
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 17,
                        ),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: MaterialStatePropertyAll(0),
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    onPressed: () {
                      _navigateToLoginScreen(context);
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
