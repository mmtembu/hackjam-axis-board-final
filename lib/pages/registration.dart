import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';
import 'package:hackjam_axis_board_front_end/pages/registration_pick_username.dart';

class Registration extends StatefulWidget {
  final String? registerAsWhat;
  const Registration({Key? key, this.registerAsWhat}) : super(key: key);

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Future<void> navigateToPage(page) async {
      Navigator.push(
        context,
        CupertinoPageRoute<bool>(
          fullscreenDialog: false,
          builder: (context) => const RegistrationUsername(),
        ),
      );
    }

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
                        'Register as ${widget.registerAsWhat}',
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
                    navigateToPage,
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
