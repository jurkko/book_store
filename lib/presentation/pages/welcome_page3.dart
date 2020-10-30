import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../colors.dart';

class WelcomePage3 extends StatefulWidget {
  WelcomePage3({Key key}) : super(key: key);

  @override
  _WelcomePage3State createState() => _WelcomePage3State();
}

class _WelcomePage3State extends State<WelcomePage3> {
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
                Text('Sell or Recycle Your Old Books With Us',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'If you\'re looking to downsize, sell or recycle old books, the Book Grocer can help.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SvgPicture.asset(
                  'images/collecting.svg',
                  height: 300.0,
                  allowDrawingOutsideViewBox: true,
                ),
                new DotsIndicator(
                  dotsCount: 4,
                  position: 2,
                  decorator: DotsDecorator(
                    color: Colors.black12, // Inactive color
                    activeColor: Palette.primary,
                  ),
                ),
              ]),
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
                          .pushReplacementNamed("/welcomePage2");
                    },
                  ),
                  FloatingActionButton(
                    heroTag: 'button_next',
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("/welcomePage4");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
