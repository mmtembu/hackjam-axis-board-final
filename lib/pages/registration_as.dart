import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';
import 'package:hackjam_axis_board_front_end/pages/registration.dart';
import '../config/pallet.dart';

class RegistrationAs extends StatefulWidget {
  const RegistrationAs({Key? key}) : super(key: key);

  @override
  State<RegistrationAs> createState() => _RegistrationAs();
}

class _RegistrationAs extends State<RegistrationAs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          backArrowButton(context),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(-0.99, -.8),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: textContent(
                        'Register As',
                        36,
                        FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      registerAsIconWidget(
                        context,
                        "An Organization",
                        const Registration(),
                      ),
                      registerAsIconWidget(
                        context,
                        "A Graduate",
                        const Registration(),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      registerAsIconWidget(
                        context,
                        "A JobSeeker",
                        const Registration(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String obtainSVGImage(registerAsText) => registerAsText == "A Graduate"
    ? gradHatSvg
    : registerAsText == "An Organization"
        ? organisationSvg
        : jobSeekerSvg;

Widget registerAsIconWidget(context, registerAsText, page) => Container(
      height: 200,
      width: 232,
      color: Colors.transparent,
      child: IconButton(
        onPressed: () => navigateToPage(context, page),
        icon: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.string(
              obtainSVGImage(registerAsText),
              height: 125.00,
              width: 125.00,
              fit: BoxFit.contain,
            ),
            textContent(
              registerAsText,
              20,
              FontWeight.bold,
            ),
          ],
        ),
      ),
    );
