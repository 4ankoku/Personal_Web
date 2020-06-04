import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Responsive.dart';

class Widgets {
  Widget spaceHorizontal(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget spaceVertical(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget circalContainer(Color color, double size) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(390)),
            color: color));
  }

  Widget headingCenterText(String name, Color color, double fontSize) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: GoogleFonts.ubuntu(color: color, fontSize: fontSize, fontWeight: FontWeight.w700)
    );
  }

  Widget contentCenterText(
      {BuildContext context,
      String name,
      Color color,
      double textSizeSmall,
      double textSizeMedium,
      double textSizeLarge}) {
    double textSize = 10;
    if (ResponsiveWidget.isSmallScreen(context)) {
      textSize = textSizeSmall;
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      textSize = textSizeMedium;
    } else {
      textSize = textSizeLarge;
    }

    return Text(
      name,
      textAlign: TextAlign.center,
      style: GoogleFonts.ubuntu(color: color, fontSize: textSize, fontWeight: FontWeight.w700)
    );
  }
}