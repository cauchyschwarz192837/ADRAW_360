import 'package:elemental/Components/Data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:lottie/lottie.dart';
import 'package:elemental/model1Page.dart';

class ElementPage extends StatefulWidget {
  final int atomicnum;
  const ElementPage({Key key, @required this.atomicnum}) : super(key: key);

  @override
  _ElementPageState createState() => _ElementPageState();
}

var number;
bool touch = false;

class _ElementPageState extends State<ElementPage> {
  @override
  Widget build(BuildContext context) {
    Period p = new Period();

    var data = p.period;
    setState(() {
      number = widget.atomicnum.toInt();
    });

    var mass = data[widget.atomicnum]['caliber'].toString();
    mass = mass.substring(0, 3);
    var responsive = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Model1Page()));
          },
          child: Center(
            child: Text(
              "Tap here",
              style: GoogleFonts.cabin(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          )),
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: responsive.width > 760
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      Text(
                        data[widget.atomicnum]['name'],
                        style: GoogleFonts.cabin(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Sideinfo(
                              data: data,
                              atomicnum: widget.atomicnum,
                              mass: mass)
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Viewer(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 600,
                              height: 600,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 30),
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'More Info',
                                            style: GoogleFonts.cabin(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 300,
                                        height: 300,
                                        child: Center(
                                          child:
                                              Lottie.asset('assets/wow.json'),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 500,
                                            child: Text(
                                              data[widget.atomicnum]['name'] +
                                                  ' belongs to the category of ' +
                                                  data[widget.atomicnum]
                                                      ['groupBlock'] +
                                                  ' weapons.',
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            //declaration
                                            'Caliber : ',
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          Text(
                                            //body
                                            data[widget.atomicnum]['caliber'],
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              //declaration
                                              'Rate of fire : ',
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              //body
                                              data[widget.atomicnum]
                                                  ['rateOfFire'],
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            //declaration
                                            'Mass : ',
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          Text(
                                            //body
                                            data[widget.atomicnum]['heavyMass'],
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              //declaration
                                              'Barrel Length : ',
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              //body
                                              data[widget.atomicnum]
                                                  ['barrelLength'],
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Muzzle Velocity : ',
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          Text(
                                            data[widget.atomicnum]
                                                ['muzzelVelocity'],
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              //declaration
                                              'Length : ',
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              //body
                                              data[widget.atomicnum]
                                                          ['fullLength']
                                                      .substring(0, 1)
                                                      .toUpperCase() +
                                                  data[widget.atomicnum]
                                                          ['fullLength']
                                                      .substring(1),
                                              style: GoogleFonts.cabin(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            //declaration
                                            'Effective Range : ',
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          Text(
                                            //body
                                            data[widget.atomicnum]
                                                ['effectiveRange'],
                                            style: GoogleFonts.cabin(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      Text(
                        data[widget.atomicnum]['name'],
                        style: GoogleFonts.cabin(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Sideinfo(
                              data: data,
                              atomicnum: widget.atomicnum,
                              mass: mass)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Center(
                              child: Viewer(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'More Info',
                                      style: GoogleFonts.nunito(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 300,
                                  height: 300,
                                  child: Center(
                                    child: Lottie.asset('assets/wow.json'),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        data[widget.atomicnum]['name'] +
                                            ' belongs to the category of ' +
                                            data[widget.atomicnum]
                                                ['groupBlock'] +
                                            ' weapons.',
                                        style: GoogleFonts.cabin(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Feed Device : ',
                                      style: GoogleFonts.cabin(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['feedDevice'],
                                      style: GoogleFonts.cabin(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Sighting System : ',
                                        style: GoogleFonts.cabin(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        data[widget.atomicnum]
                                            ['sightingSystem'],
                                        style: GoogleFonts.cabin(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Mass : ',
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['heavyMass'],
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Barrel Length : ',
                                        style: GoogleFonts.cabin(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        data[widget.atomicnum]['barrelLength'],
                                        style: GoogleFonts.cabin(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Muzzle Velocity : ',
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['muzzelVelocity'],
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Full Length : ',
                                        style: GoogleFonts.cabin(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        data[widget.atomicnum]['fullLength']
                                                .substring(0, 1)
                                                .toUpperCase() +
                                            data[widget.atomicnum]['fullLength']
                                                .substring(1),
                                        style: GoogleFonts.cabin(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Effective Range : ',
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['effectiveRange'],
                                      style: GoogleFonts.cabin(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class Sideinfo extends StatelessWidget {
  const Sideinfo({
    Key key,
    @required this.data,
    @required this.atomicnum,
    @required this.mass,
  }) : super(key: key);

  final List data;
  final int atomicnum;
  final String mass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 600,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 39, 197, 203),
              Color.fromARGB(255, 19, 104, 194)
            ],
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['symbol'],
                                style: GoogleFonts.cabin(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Name',
                        style: GoogleFonts.cabin(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['heavyMass'],
                                style: GoogleFonts.cabin(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Mass',
                        style: GoogleFonts.cabin(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['origin'],
                                style: GoogleFonts.cabin(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Country of Origin',
                        style: GoogleFonts.cabin(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['yearInvented'],
                                style: GoogleFonts.cabin(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Year Invented',
                        style: GoogleFonts.cabin(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Viewer extends StatefulWidget {
  var nu;
  @override
  _ViewerState createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  Object cube;
  String symbol;
  @override
  void initState() {
    Period p = new Period();
    var d = p.period;
    String symbol;

    setState(() {
      symbol = d[number]['symbol'].toString();
    });
    cube = Object(fileName: "assets/Models/$symbol.obj");
    cube.rotation.setValues(-30, -120, 40);
    cube.updateTransform();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          touch = true;
        });
      },
      child: SizedBox(
        width: 250,
        height: 250,
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(height: 20),
              Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(cube); //insert 3d model of weapon
                  scene.camera.zoom = 10;
                },
              ),
              touch == false
                  ? SizedBox(
                      width: 200,
                      height: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            'Tap and drag to interact',
                            style: GoogleFonts.cabin(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      width: 10,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
