import 'package:book_store/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcomePage1 extends StatefulWidget {
  WelcomePage1({Key key}) : super(key: key);

  @override
  _WelcomePage1State createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
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
                Text('Discounted secondhand books',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(height: 30,),
                Text('Used and near new secondhand books at great prices.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2),
                new SvgPicture.asset(
                  'images/Bibliophile.svg',
                  height: 250.0,
                  allowDrawingOutsideViewBox: true,
                ),
                new DotsIndicator(
                  dotsCount: 4,
                  position: 0,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    heroTag: 'button_next',
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("/welcomePage2");
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
