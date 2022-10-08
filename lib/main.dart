import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'config/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Pallet.kToDark,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Axis Board'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    const logoSvg =
        '<svg width="34" height="28" viewBox="0 0 34 28" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13.4003 2.82336C13.4003 1.32041 13.8105 0.851875 14.4564 0.425937C9.17576 0.943147 3.11254 2.49478 1.06108 4.46626C0.650784 4.93479 0.354462 5.7319 0.354462 6.72373C0.354462 13.0215 8.46914 27.26 14.3424 27.26C17.1005 27.26 21.7353 23.6395 25.4887 18.8021C24.9568 18.942 24.6073 18.942 24.0831 18.942C19.737 18.942 13.4003 6.86368 13.4003 2.82336V2.82336ZM22.7306 0C20.4436 0 19.5622 0.328581 19.5622 2.20879C19.5622 6.24911 23.65 14.2872 27.2894 14.2872C29.2877 14.2872 33.2767 8.22059 33.2767 3.19453C33.2767 0.705839 28.186 0 22.7306 0Z" fill="black"/></svg>';
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
              // alignment: FractionalOffset.bottomCenter,
              alignment: const Alignment(0.0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 3.0,
                        shadowColor: Colors.black,
                      ),
                      onPressed: (() => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Yes please check it's me, Login has been pressed!!!"),
                              ),
                            ),
                          }),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.comfortaa(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 3.0,
                        shadowColor: Colors.black,
                      ),
                      onPressed: (() => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Yes please check it's me, Registration has been pressed !!!"),
                              ),
                            ),
                          }),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "REGISTER",
                          style: GoogleFonts.comfortaa(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
