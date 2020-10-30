import 'package:book_store/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcomePage2 extends StatefulWidget {
  WelcomePage2({Key key}) : super(key: key);

  @override
  _WelcomePage2State createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
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
                Text('20 Book Grocers Nationally',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'We\'ve successfully opened 20 stores across Australia.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
                new SvgPicture.asset(
                  'images/business_shop.svg',
                  height: 300.0,
                  allowDrawingOutsideViewBox: true,
                ),
                new DotsIndicator(
                  dotsCount: 4,
                  position: 1,
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
                          .pushReplacementNamed("/welcomePage1");
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
                          .pushReplacementNamed("/welcomePage3");
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
