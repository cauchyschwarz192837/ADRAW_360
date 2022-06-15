import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:elemental/pages/Nav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class splash2 extends StatefulWidget {
  @override
  _splash2State createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: Lottie.asset("assets/99740-line-loading.json"),
            width: 200,
            height: 82,
          )
        ],
      ),
      backgroundColor: Colors.black45,
      nextScreen: NavPage(),
      duration: 6000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(seconds: 3),
    );
  }
}
