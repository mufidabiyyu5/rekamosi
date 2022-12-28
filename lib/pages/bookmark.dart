import 'package:flutter/material.dart';
import 'package:rekamosi/pages/homepage.dart';
import 'package:rekamosi/pages/profile.dart';
import 'package:rekamosi/theme.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekamosi/pages/detailpage.dart';
import 'package:rekamosi/pages/splash.dart';
import 'package:rekamosi/theme.dart';
import 'package:rekamosi/data/topik.dart';
import 'package:rekamosi/components/card.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
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

  int _selectedIndex = 1;

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              for (var i = 0; i < 5; i++)
                Cards(
                  firstColor: topik[i]['firstColor'],
                  secondColor: topik[i]['secondColor'],
                  svgIcons: topik[i]['svgUrl'],
                  title: topik[i]['title'],
                  dosen: topik[i]['dosen'],
                  kbk: topik[i]['kbk'],
                  status: topik[i]['status'],
                )
            ],
          ),
        ),
      ),
    );
  }
}
