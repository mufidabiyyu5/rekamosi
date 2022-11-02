import 'package:flutter/material.dart';
import 'package:rekamosi/pages/login.dart';
import 'package:rekamosi/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/Logo_White.png',
                      height: 16,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsetsDirectional.only(
                      start: 24,
                      top: 24,
                      end: 24,
                      bottom: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daftar Akun",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Sebelum mulai mencari topik skripsi, daftarin diri kamu dulu yuk!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: textColor,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Nama',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Masukan nama kamu...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: purplePrime.withOpacity(0.1),
                            contentPadding: EdgeInsets.all(12),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'NIM',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Masukan NIM kamu...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: purplePrime.withOpacity(0.1),
                            contentPadding: EdgeInsets.all(12),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Masukan email...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: purplePrime.withOpacity(0.1),
                            contentPadding: EdgeInsets.all(12),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Masukan password...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: purplePrime.withOpacity(0.1),
                            contentPadding: EdgeInsets.all(12),
                            suffixIcon: new GestureDetector(
                              onTap: () {},
                              child: new Container(
                                padding: EdgeInsetsDirectional.all(12),
                                constraints: BoxConstraints(
                                  maxHeight: 20,
                                  maxWidth: 20,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/eye-slash.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Konfirmasi Password',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Pastikan passwordnya sama ya...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: purplePrime.withOpacity(0.1),
                            contentPadding: EdgeInsets.all(12),
                            suffixIcon: new GestureDetector(
                              onTap: () {},
                              child: new Container(
                                padding: EdgeInsetsDirectional.all(12),
                                constraints: BoxConstraints(
                                  maxHeight: 20,
                                  maxWidth: 20,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/eye-slash.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
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
                                ),
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              elevation: MaterialStatePropertyAll(0),
                              shadowColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Daftar',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sudah punya akun?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: textColor,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                _navigateToLoginScreen(context);
                              },
                              child: Text(
                                "Masuk",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: purplePrime,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
