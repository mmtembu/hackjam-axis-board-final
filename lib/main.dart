import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';
import 'package:hackjam_axis_board_front_end/pages/registration.dart';
import 'package:hackjam_axis_board_front_end/pages/login.dart';
import 'config/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AxisBoard',
      theme: ThemeData(
        primarySwatch: Pallet.kToDark,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'AxisBoard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    void navigateToPage(page) => Navigator.push(
          context,
          CupertinoPageRoute<bool>(
            fullscreenDialog: false,
            builder: (context) => page.toString().toUpperCase() == 'REGISTER'
                ? const Registration()
                : const Login(),
          ),
        );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: const Alignment(0.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.string(logoSvg),
                  ),
                  Text(
                    'AxisBoard',
                    style: GoogleFonts.comfortaa(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  submitbutton(
                    navigateToPage,
                    'LOGIN',
                  ),
                  submitbutton(
                    navigateToPage,
                    'REGISTER',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
