import 'package:flutter/material.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: backImageButton(context),
                ),
              ],
            ),
          ),
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
                        'Login',
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
                        ],
                      ),
                    ),
                  ),
                  submitbutton(
                    null,
                    'Login',
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
