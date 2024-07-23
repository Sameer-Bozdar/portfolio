import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);
  final Uri _url = Uri.parse("https://github.com/SameerBalouch");
  final Uri _linkedinUrl =
      Uri.parse("https://www.linkedin.com/in/sameerbalouch/");

  final String _myCv = "assets/images/resume.pdf";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Pakistan",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Karachi",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "24",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {


                         final url = Uri.base.resolve(_myCv).toString();
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Could not launch $url")));
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: _launchLinkedinUrl,
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: _launchUrl,
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchUrl() async {
    try {
      launchUrl(_url);
    } catch (e) {
      throw Exception("$e");
    }
  }

  _launchLinkedinUrl() async {
    try {
      launchUrl(_linkedinUrl);
    } catch (e) {
      throw Exception("$e");
    }
  }
}
