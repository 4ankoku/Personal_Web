import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jendraweb/utils/Const.dart';

class SkillsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              rowItem(
                FontAwesomeIcons.mobileAlt,
                "Mobile Apps",
                "Develope your mobile application using Android Kotlin.",
                context
              ),
              rowItem(
                FontAwesomeIcons.connectdevelop,
                "Cross Platform",
                "Develope Cross Platform Apps using Flutter so it can save some money.",
                context
              ),
              rowItem(
                FontAwesomeIcons.server,
                "Back-End Maintenance",
                "I can maintenance your back-end problem and perfomance testing.",
                context
              ),
            ],
          ),
          // Const().widgetUtils.spaceVertical(20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: <Widget>[
              
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget rowItem(IconData icon, String title, String content, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        color: Color(0xFF181818),
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.yellow,
                size: 50,
              ),
              Const().widgetUtils.spaceVertical(6),
              Const().widgetUtils.headingCenterText(title, Colors.white, 18),
              Const().widgetUtils.spaceVertical(10),
              Const().widgetUtils.contentCenterText(
                  name: content,
                  context: context,
                  color: Colors.white.withOpacity(0.50),
                  textSizeSmall: 10,
                  textSizeMedium: 12,
                  textSizeLarge: 14)
            ],
          ),
        ),
      ),
    );
  }
}