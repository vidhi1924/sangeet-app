import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sangeet/Animation/FadeAnimation.dart';

class InviteCard extends StatefulWidget {
  @override
  _InviteCardState createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Image.asset('assets/pinkinvitation.jpg',
              fit: BoxFit.cover,
              height: double.infinity
              ),
              Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 4.5,
            top: MediaQuery.of(context).size.height / 4,
            child: FadeAnimation(
                1,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'YOU  ARE  INVITED  TO  THE',
                      maxLines: 1,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'BodoniModa',
                          ),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 3.5,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                4,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'Sangeet Sandhya',
                      maxLines: 1,
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GreatVibes'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 2.78,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                6,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      '-OF-',
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'BodoniModa',
                          ),
                    ),
                  ),
                )),
          ),
        Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 2.4,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                8,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'Yash & Krisha',
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GreatVibes'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.98,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                10,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'SATURDAY  THE  THIRTIETH  OF  JANUARY',
                      maxLines: 1,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          // fontSize: 7,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.89,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                10,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'TWO  THOUSAND  AND  TWENTY-ONE',
                      maxLines: 1,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          // fontSize: 7,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          
          
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.75,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                12,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      "AT  HALF  PAST  SIX  IN  THE  EVENING",
                      maxLines: 1,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.65,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                14,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: AutoSizeText(
                      'AT  PADMAVATI  BANQUET HALL,  MULUND.',
                      maxLines: 1,
                      minFontSize: 7,
                      maxFontSize: 10,
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
      ],),
    );
  }
}