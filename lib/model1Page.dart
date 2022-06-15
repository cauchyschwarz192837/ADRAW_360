import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elemental/pages/Nav.dart';
import 'package:model_viewer/model_viewer.dart';

class Model1Page extends StatefulWidget {
  const Model1Page({Key key}) : super(key: key);

  @override
  State<Model1Page> createState() => _Model1PageState();
}

class _Model1PageState extends State<Model1Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 10,
            title: Row(
              children: [
                Text(
                  "the",
                  style: GoogleFonts.nunito(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "360",
                  style: GoogleFonts.nunito(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Xperience",
                  style: GoogleFonts.nunito(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Color.fromARGB(255, 113, 154, 16)),
        body: ModelViewer(
          src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          alt: "A 3D model of an SAR-21",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 113, 154, 16),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NavPage()));
            },
            child: Center(
              child: Text(
                "Return",
                style: GoogleFonts.cabin(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            )),
      ),
    );
  }
}

/*  */