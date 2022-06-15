import 'package:elemental/Components/scroll_behaviour.dart';
import 'package:elemental/pages/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arms Drawer',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen2(),
      scrollBehavior:
          ScrollWithoutMaterialOverflowGlow(), // get rid of the glow
    );
  }
}

// 1//0gijoWcqdSNPOCgYIARAAGBASNwF-L9Ircwst8yTpn9FLxQ92o7GRGmcYUjYcGs54KtbQYNtT2PMSh2S6fJ33b28Lo1QlDT_irpU