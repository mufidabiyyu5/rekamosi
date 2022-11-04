import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekamosi/pages/detailpage.dart';
import 'package:rekamosi/pages/splash.dart';
import 'package:rekamosi/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToDetailScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DetailPage()));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: purplePrime,
        ),
        selectedItemColor: purplePrime,
        unselectedItemColor: textColor,
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home-linear.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: purplePrime,
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/search-normal.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/search-bold.svg",
              color: purplePrime,
            ),
            label: "Telusuri",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/bookmark.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/bookmark-bold.svg",
              color: purplePrime,
            ),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/profile-bold.svg",
              color: purplePrime,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    purplePrime,
                    purpleSecond,
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      start: 24,
                      top: 16,
                      end: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Halo, Basuki",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Mau cari topik apa hari ini?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintText: 'Cari topik RPL...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withOpacity(0.3),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: new GestureDetector(
                              onTap: () {},
                              child: new Container(
                                padding: EdgeInsetsDirectional.all(12),
                                constraints: BoxConstraints(
                                  maxHeight: 20,
                                  maxWidth: 20,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/search-normal.svg',
                                  color: textColor.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsetsDirectional.only(
                      start: 24,
                      end: 24,
                    ),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent,
                          child: Container(
                            width: 120,
                            height: 112,
                            padding: EdgeInsetsDirectional.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  purplePrime,
                                  purpleSecond,
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/code.svg",
                                  height: 16,
                                  width: 16,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Rekayasa \nPerangkat \nLunak",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent,
                          child: Container(
                            width: 120,
                            height: 112,
                            padding: EdgeInsetsDirectional.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  pinkPrime,
                                  pinkSecond,
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/hierarchy-square-3.svg",
                                  height: 16,
                                  width: 16,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Sistem \nInformasi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent,
                          child: Container(
                            width: 120,
                            height: 112,
                            padding: EdgeInsetsDirectional.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  bluePrime,
                                  blueSecond,
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/command-square.svg",
                                  height: 16,
                                  width: 16,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Jaringan \nKomputer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Topik Terbaru",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        for (var i = 0; i < 5; i++)
                          Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToDetailScreen(context);
                                },
                                child: Card(
                                  color: Colors.white,
                                  shadowColor: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                purplePrime,
                                                purpleSecond,
                                              ],
                                            ),
                                          ),
                                          padding: EdgeInsets.all(24),
                                          child: SvgPicture.asset(
                                            'assets/icons/code.svg',
                                            height: 24,
                                            width: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pengembangan Web dengan Metode Scrum",
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Yudi Ahmad Hambali, S.Kom., M.T.",
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Belum diambil",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
