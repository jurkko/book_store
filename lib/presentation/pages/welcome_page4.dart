import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

class WelcomePage4 extends StatefulWidget {
  WelcomePage4({Key key}) : super(key: key);

  @override
  _WelcomePage4State createState() => _WelcomePage4State();
}

class _WelcomePage4State extends State<WelcomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(children: [
                Text('Books for every taste',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'images/leaf.svg',
                  height: 300.0,
                  allowDrawingOutsideViewBox: true,
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'images/leaf2.svg',
                      height: 130.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                    SvgPicture.asset(
                      'images/leaf3.svg',
                      height: 130.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
                onTap: () {
                  print("Container clicked");
                  Navigator.of(context)
                      .pushReplacementNamed("/mainmenu");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.primary,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  width: 280,

                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Sign in",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.button),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  print("Container clicked");
                  Navigator.of(context)
                      .pushReplacementNamed("/mainmenu");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Palette.primary,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  width: 280,

                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Sign Up",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.button),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'images/reading_girl.svg',
                  height: 150.0,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    heroTag: 'button_back',
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Palette.primary,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("/welcomePage3");
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
