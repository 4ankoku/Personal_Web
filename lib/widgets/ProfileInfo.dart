import 'package:flutter/material.dart';
import 'package:jendraweb/utils/Responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("images/ankoku.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hello There Fellas",
        textScaleFactor: 2,
        style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold)
      ),
      Text(
        "Ankoku's Here",
        textScaleFactor: 5,
        style: GoogleFonts.ubuntu()
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Just a nolife guy who like to code.\nWrite in Kotlin, Flutter, Some JS and PHP Framework",
        softWrap: true,
        textScaleFactor: 1.5,
        style: GoogleFonts.ubuntu()
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}