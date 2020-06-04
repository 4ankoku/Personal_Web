import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jendraweb/utils/Responsive.dart';
import 'dart:html' as html;

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}): super(key: key);

  List<Widget> navText() => [
    NavBarItems(
      text: "Github",
      onPressed: () {
      html.window.open("https://github.com/J3ndra", "Ankoku");
    }),
    NavBarItems(
      text: "LinkedIn",
      onPressed: () {
      html.window.open("https://www.linkedin.com/in/j3ndra/", "Ankoku");
    }),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)? MainAxisAlignment.center: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AKDot(),
          if(!ResponsiveWidget.isSmallScreen(context))
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItems(
                  text: "Github",
                  onPressed: () {
                    html.window.open("https://github.com/J3ndra", "Ankoku");
                }),
                SizedBox(width: 20,),
                NavBarItems(
                  text: "LinkedIn",
                  onPressed: () {
                    html.window.open("https://www.linkedin.com/in/j3ndra/", "Ankoku");
                }),
              ],
            )
        ],
      ),
    );
  }
}

class NavBarItems extends StatelessWidget {
  final text;
  final onPressed;

  const NavBarItems(
      {Key key,
      @required this.text,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text, style: GoogleFonts.ptSans(), textScaleFactor: 1.5),
      onPressed: onPressed,
    );
  }
}

class AKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Ankoku",
          style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
          textScaleFactor: 3,
        )
      ],
    );
  }
}