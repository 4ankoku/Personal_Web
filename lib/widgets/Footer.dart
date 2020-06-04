import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jendraweb/utils/Responsive.dart';
import 'dart:html' as html;


class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                child: _buildCopyRightText(context),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: _buildSocialIcons(),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildCopyRightText(BuildContext context) {
    return Text(
      "Ankoku Kishi",
      textScaleFactor: 1,
      style: GoogleFonts.ubuntu(fontSize: ResponsiveWidget.isSmallScreen(context)? 18 : 24)
    );
  }
  Widget _buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            html.window
                .open("https://www.linkedin.com/in/j3ndra/", "LinkedIn");
          },
          child: Icon(FontAwesomeIcons.linkedin)
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            html.window.open("https://medium.com/@4ankoku", "Medium");
          },
          child: Icon(FontAwesomeIcons.medium)
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            html.window.open("https://github.com/J3ndra", "Github");
          },
          child: Icon(FontAwesomeIcons.github)
        ),
      ],
    );
  }
}