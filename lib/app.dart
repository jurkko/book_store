import 'package:book_store/presentation/colors.dart';
import 'package:book_store/presentation/pages/mainmenu.dart';
import 'package:book_store/presentation/pages/welcome_page1.dart';
import 'package:book_store/presentation/pages/welcome_page2.dart';
import 'package:book_store/presentation/pages/welcome_page3.dart';
import 'package:book_store/presentation/pages/welcome_page4.dart';
import 'package:flutter/material.dart';


class BookStore extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: generateMaterialColor(Palette.primary),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 38.0, fontFamily: 'SF-Pro', color: Palette.primary),
          headline2: TextStyle(fontSize: 20.0, fontFamily: 'SF-Pro', color: Palette.secondary),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'SF-Pro'),
            button:  TextStyle(fontSize: 25.0, fontFamily: 'SF-Pro', color: Colors.white),
//        headline3    48.0  regular  0.0
//        headline4    34.0  regular  0.25
//        headline5    24.0  regular  0.0
//        headline6    20.0  medium   0.15
//        subtitle1    16.0  regular  0.15
//        subtitle2    14.0  medium   0.1
//        body1        16.0  regular  0.5   (bodyText1)
//        body2        14.0  regular  0.25  (bodyText2)

//        caption      12.0  regular  0.4
//        overline     10.0  regular  1.5
        ),
      ),
      routes: {
        '/welcomePage1': (context) => WelcomePage1(),
        '/welcomePage2': (context) => WelcomePage2(),
        '/welcomePage3': (context) => WelcomePage3(),
        '/welcomePage4': (context) => WelcomePage4(),
        '/mainmenu': (context) => MainMenu(),
      },
      initialRoute: '/welcomePage1',
    );
  }
}
