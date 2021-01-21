import 'package:flutter/material.dart';
import 'package:sangeet/Invitation/card.dart';
import 'package:sangeet/Menu/Gallery/gallery.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Cards extends StatelessWidget {
  final String number;
  final String item;
  final Color backgrClr;
  final Color firstCircle;
  final Color secondCircle;

  Cards(
      {this.number,
      this.item,
      this.backgrClr,
      this.firstCircle,
      this.secondCircle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 8.1,
              width: MediaQuery.of(context).size.height / 8.1,
              decoration: BoxDecoration(
                color: backgrClr,
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: firstCircle,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60.0)),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: secondCircle,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60.0)),
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            print(
                "number----------------------------------------------------------------------------");
            print(number);
            print(MediaQuery.of(context).size);
            if (number == '1') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InviteCard()));
            } else if (number == '2') {
              _launchMapsUrl();
            } else if (number == '3') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gallery()));
            }else if (number == '4') {
              _launchTeaserUrl();
            } else {
              _launchYoutubeUrl();
            }
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 8.1,
            width: MediaQuery.of(context).size.width / 1.8,
            decoration: BoxDecoration(
              // color: Color.fromRGBO(143, 148, 251, .2),
              // color: Colors.pink[50],
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AutoSizeText(
                  number,
                  minFontSize: 30,
                  maxFontSize: 45,
                  style: TextStyle(
                    // fontSize: 30.0,
                    fontFamily: 'GreatVibes',
                    color: Color(0xffBF344D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AutoSizeText(
                  item,
                  minFontSize: 30,
                  maxFontSize: 45,
                  style: TextStyle(
                    // fontSize: 40.0,
                    fontFamily: 'GreatVibes',
                    color: Color(0xffBF344D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void _launchMapsUrl() async {
  final address =
      'Padmavati Banquet Hall, Pranav Commercial Plaza, 5th &6th Floor, MG Road, above Shiv Sena Office, Mulund West, Mumbai, Maharashtra 400080';
  final url = 'https://www.google.com/maps/search/${Uri.encodeFull(address)}';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchYoutubeUrl() async {
  // final address =
  // 'Samarambh Lawn and Banquets, Ghodbunder Rd, Ovala, Gowniwada, Owale, Thane West, Mumbai, Maharashtra 400607';
  final url =
      'https://www.youtube.com/watch?v=xE9FBL7jUGA&list=PLPRlIF-ZGlTGrM-KB8qk1ee4Dq5TjxMTr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchTeaserUrl() async {
  final url =
      'https://www.youtube.com/watch?v=embDqmwDvl4&feature=youtu.be';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
