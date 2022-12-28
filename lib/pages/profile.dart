import 'package:flutter/material.dart';
import 'package:rekamosi/pages/homepage.dart';
import 'package:rekamosi/theme.dart';
import 'package:rekamosi/pages/bookmark.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekamosi/pages/detailpage.dart';
import 'package:rekamosi/pages/splash.dart';
import 'package:rekamosi/theme.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // void _navigateToDetailScreen(BuildContext context) {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => DetailPage()));
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_selectedIndex == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    } else if (_selectedIndex == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Bookmark()));
    } else if (_selectedIndex == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Profile()));
    }
  }

  int _selectedIndex = 2;

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
            icon: SvgPicture.asset("assets/icons/bookmark.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/bookmark-bold.svg",
              color: purplePrime,
            ),
            label: "History",
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
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 64,
                ),
                SvgPicture.asset(
                  'assets/icons/profile-bold.svg',
                  width: 32,
                  height: 32,
                  color: purplePrime,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Erlangga",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1907996 • Ilmu Komputer",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.transparent,
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
                      shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    ),
                    onPressed: () {},
                    // icon: SvgPicture.asset(
                    //   "assets/icons/sms-tracking.svg",
                    //   height: 20,
                    //   width: 20,
                    // ),
                    child: Text(
                      'Keluar',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
