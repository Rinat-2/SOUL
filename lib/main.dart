import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ui/landing.dart';
import 'package:ui/services/auth.dart';
import 'package:ui/user.dart';

//import 'package:ui/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return StreamProvider<User>.value(
      value: AuthService().currentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SoUL',
        theme: ThemeData(
          primaryColor: Color(0xFF202328),
          accentColor: Color(0xFF63CF93),
          backgroundColor: Color(0xFF12171D),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LandingPage(),
      ),
    );
  }
}
