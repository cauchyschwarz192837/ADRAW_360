import 'package:elemental/pages/Nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';
import 'package:lottie/lottie.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Lottie.asset(
              'assets/91001-success.json',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Your score is",
            style: GoogleFonts.nunito(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: GoogleFonts.nunito(
              fontSize: 85,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavPage(),
                  ));
            },
            shape: StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
