import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackjam_axis_board_front_end/common_components/common_components.dart';
import '../config/pallet.dart';

class RegistrationUsername extends StatefulWidget {
  const RegistrationUsername({Key? key}) : super(key: key);

  @override
  State<RegistrationUsername> createState() => _RegistrationUsername();
}

bool onNotification(ScrollEndNotification t, BuildContext context) {
  if (t.metrics.pixels > 0 && t.metrics.atEdge) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("I've reached the end"),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("I'm at the beginning"),
      ),
    );
  }
  return true;
}

class _RegistrationUsername extends State<RegistrationUsername> {
  late var _isOkayButtonDisabled;
  late var _isDialogOn;

  @override
  void initState() {
    super.initState();

    _isOkayButtonDisabled = true;
    _isDialogOn = false;
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
                            'Username',
                            '<Username placeholder>',
                            context,
                          ),
                        ],
                      ),
                    ),
                  ),
                  submitbutton(
                    null,
                    'Continue',
                  ),
                  InkWell(
                    onTap: () {
                      _isDialogOn = true;
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => StatefulBuilder(
                          builder: (context, setState) {
                            return NotificationListener(
                              onNotification: (ScrollEndNotification t) {
                                if (t.metrics.pixels > 0 && t.metrics.atEdge) {
                                  setState(() {
                                    _isOkayButtonDisabled = false;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("I've reached the end"),
                                    ),
                                  );
                                } else {
                                  setState(() {
                                    _isOkayButtonDisabled = true;
                                  });
                                }
                                return true;
                              },
                              child: AlertDialog(
                                scrollable: true,
                                elevation: 10.6,
                                insetPadding: const EdgeInsets.all(200),
                                content: textContent(
                                  fillerText(),
                                  20,
                                  FontWeight.normal,
                                ),
                                actionsAlignment: MainAxisAlignment.center,
                                actionsPadding: const EdgeInsets.all(10),
                                actions: [
                                  ElevatedButton(
                                    style: buttonStyle(),
                                    onPressed: _isOkayButtonDisabled
                                        ? null
                                        : () {
                                            if (_isDialogOn) {
                                              print(
                                                  'yes it is on, it is chief');
                                            }
                                            // isDialogOn = !isDialogOn;
                                            if (_isOkayButtonDisabled) return;
                                            Navigator.pop(context);
                                            _isDialogOn = false;
                                          },
                                    child: const Text('OK'),
                                  ),
                                  TextButton(
                                    style: buttonStyle(),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        _isDialogOn = false;
                                      });
                                    },
                                    child: const Text('CANCEL'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: textContent(
                        """By signing up you agree to AxisBoard's Terms of Service and Privacy Policy""",
                        12,
                        FontWeight.normal,
                        TextDecoration.underline,
                      ),
                    ),
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
