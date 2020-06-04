import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jendraweb/utils/Const.dart';
import 'package:jendraweb/utils/Responsive.dart';
import 'package:jendraweb/widgets/SkillsColumn.dart';
import 'package:jendraweb/widgets/SkillsRow.dart';

class SkillsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveWidget.isSmallScreen(context)? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              "What I Can Do For You",
              textScaleFactor: 2,
              textAlign: ResponsiveWidget.isSmallScreen(context)? TextAlign.start: TextAlign.center,
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold)
            )
          ),
        ),
        Const().widgetUtils.spaceVertical(30),
        ResponsiveWidget.isSmallScreen(context)? SkillsColumn(): SkillsRow()
      ],
    );
  }
}