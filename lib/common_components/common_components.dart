import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textContent(
  String text,
  int? size,
  FontWeight? weight,
) =>
    Text(text,
        style: GoogleFonts.comfortaa(
          fontSize: size?.toDouble(),
          fontWeight: weight,
        ));

Widget textField(
  label,
  hintText,
  context,
) =>
    Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: '$label',
          labelStyle: MaterialStateTextStyle.resolveWith(
            (Set<MaterialState> states) {
              Color color = states.contains(MaterialState.error)
                  ? Theme.of(context).errorColor
                  : Colors.black;
              return TextStyle(
                color: color,
                letterSpacing: 1,
                fontFamily: GoogleFonts.comfortaa(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ).fontFamily,
              );
            },
          ),
          prefixIcon: label == 'Email'
              ? const Icon(Icons.email)
              : label.toString().contains('Confirm')
                  ? const Icon(Icons.verified_outlined)
                  : const Icon(Icons.lock),
        ),
        validator: (value) =>
            value == null || value.isEmpty ? checkLabel(label) : null,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );

String checkLabel(label) => label.toString().contains('Email')
    ? 'Enter email address'
    : label.toString().contains('Password')
        ? 'Enter password'
        : 'Enter confirmation password';

Widget submitbutton(
  Function? functionality,
  buttonText,
) =>
    Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 3.0,
          shadowColor: Colors.black,
        ),
        onPressed: () => functionality!(buttonText),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            buttonText,
            style: GoogleFonts.comfortaa(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
