import 'package:flutter/material.dart';
import 'package:jendraweb/widgets/Footer.dart';
import 'package:jendraweb/widgets/NavigationBar.dart';
import 'package:jendraweb/widgets/ProfileInfo.dart';
import 'package:jendraweb/utils/Responsive.dart';
import 'package:jendraweb/widgets/SkillsInfo.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  NavigationBar(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  ProfileInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  SkillsInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  Footer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}