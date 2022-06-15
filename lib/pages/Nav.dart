import 'package:elemental/pages/Quiz.dart';
import 'package:elemental/pages/Search.dart';
import 'package:elemental/pages/Table.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  Widget _child;

  @override
  void initState() {
    _child = TablePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      bottomNavigationBar: FluidNavBar(
        animationFactor: 0.7,
        scaleFactor: 1.3,
        style: FluidNavBarStyle(
          barBackgroundColor: Color.fromARGB(255, 157, 182, 35),
          iconBackgroundColor: Color.fromARGB(255, 36, 140, 181),
          iconSelectedForegroundColor: Color.fromARGB(255, 255, 255, 255),
          iconUnselectedForegroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        icons: [
          FluidNavBarIcon(icon: Icons.dns), // all weapons
          FluidNavBarIcon(icon: Icons.search),
          FluidNavBarIcon(icon: Icons.quiz_sharp), // Unity game
        ],
        onChange: _handleNavigationChange,
      ),
    );
  }

  //defining functions

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = TablePage(); // all weapons
          break;
        case 1:
          _child = SearchPage();
          break;
        case 2:
          _child = Quiz(); //TIMED JIT QUIZ
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOutCirc,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 600),
        child: _child,
      );
    });
  }
}
