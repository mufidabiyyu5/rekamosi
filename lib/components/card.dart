import 'package:flutter/material.dart';
import 'package:rekamosi/theme.dart';
import 'package:rekamosi/pages/detailpage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cards extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final String svgIcons;
  final String title;
  final String dosen;
  final String kbk;
  final bool status;

  Cards({
    this.firstColor = Colors.white,
    this.secondColor = Colors.white,
    this.svgIcons = "",
    this.title = "",
    this.dosen = "",
    this.kbk = "",
    this.status = false,
  });

  void _navigateToDetailScreen(
      Color firstColor,
      Color secondColor,
      String svgIcons,
      String title,
      String dosen,
      String kbk,
      bool status,
      BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailPage(
              firstColor: firstColor,
              secondColor: secondColor,
              svgIcons: svgIcons,
              title: title,
              dosen: dosen,
              kbk: kbk,
              status: status,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () {
            _navigateToDetailScreen(firstColor, secondColor, svgIcons, title,
                dosen, kbk, status, context);
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          firstColor,
                          secondColor,
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(24),
                    child: SvgPicture.asset(
                      svgIcons,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
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
                          dosen,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        status == false
                            ? Text(
                                "Belum diambil",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            : Text(
                                "Sudah diambil",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
