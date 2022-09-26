import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';
import '../config/pallet.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    const backButton =
        '<svg width="20" height="20" viewBox="0 0 13 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1.91421 4.35355L4.56066 7L3.85355 7.70711L0.353553 4.20711L0 3.85355L0.353553 3.5L3.85355 0L4.56066 0.707107L1.91421 3.35355L5.70711 3.35355C9.28325 3.35355 12.2071 6.27741 12.2071 9.85355L12.2071 11.3536H11.2071L11.2071 9.85355C11.2071 6.8297 8.73096 4.35355 5.70711 4.35355H1.91421Z" fill="black" fill-opacity="1"/></svg>';
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: SvgPicture.string(
                      backButton,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.black,
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
                        'Register',
                        36,
                        FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.99, -.8),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          textField(
                            'Email',
                            'Enter email address',
                            context,
                          ),
                          textField(
                            'Password',
                            'Enter password ',
                            context,
                          ),
                          textField(
                            'Confirm Password',
                            'Enter password ',
                            context,
                          ),
                        ],
                      ),
                    ),
                  ),
                  submitbutton(
                    null,
                    'Register',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
