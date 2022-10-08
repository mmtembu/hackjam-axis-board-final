import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

const backButton =
    '<svg width="20" height="20" viewBox="0 0 13 12" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1.91421 4.35355L4.56066 7L3.85355 7.70711L0.353553 4.20711L0 3.85355L0.353553 3.5L3.85355 0L4.56066 0.707107L1.91421 3.35355L5.70711 3.35355C9.28325 3.35355 12.2071 6.27741 12.2071 9.85355L12.2071 11.3536H11.2071L11.2071 9.85355C11.2071 6.8297 8.73096 4.35355 5.70711 4.35355H1.91421Z" fill="black" fill-opacity="1"/></svg>';

Widget textContent(String text, int? size, FontWeight? weight,
        [TextDecoration? decoraction]) =>
    Text(
      text,
      style: GoogleFonts.comfortaa(
        fontSize: size?.toDouble(),
        fontWeight: weight,
        decoration: decoraction,
      ),
    );

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
      child: buttonText.toString().toUpperCase() == 'REGISTER'
          ? ElevatedButton(
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
            )
          : OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 3.0,
                shadowColor: Colors.black,
              ),
              onPressed: () => functionality!(buttonText),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  buttonText.toString().toUpperCase(),
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );

fillerText() =>
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis in eu mi bibendum neque egestas congue quisque. Ullamcorper morbi tincidunt ornare massa eget. Facilisis gravida neque convallis a cras semper auctor neque vitae. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Massa vitae tortor condimentum lacinia quis vel eros donec ac. Aliquam sem et tortor consequat id porta. Dui faucibus in ornare quam viverra orci sagittis eu. Rhoncus dolor purus non enim praesent elementum facilisis leo. Vitae suscipit tellus mauris a diam maecenas.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Pretium nibh ipsum consequat nisl vel pretium lectus quam id. Et malesuada fames ac turpis egestas. Non blandit massa enim nec dui nunc. Sit amet nulla facilisi morbi tempus iaculis urna. Proin fermentum leo vel orci porta. Convallis a cras semper auctor neque vitae tempus quam. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. Fames ac turpis egestas integer eget aliquet nibh. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Mauris in aliquam sem fringilla ut morbi. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Non diam phasellus vestibulum lorem sed risus ultricies. Elit pellentesque habitant morbi tristique.

At auctor urna nunc id cursus metus aliquam eleifend. Nunc lobortis mattis aliquam faucibus purus in. Donec ultrices tincidunt arcu non sodales neque sodales ut. Donec enim diam vulputate ut pharetra sit amet aliquam. Tincidunt lobortis feugiat vivamus at augue eget arcu. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Leo in vitae turpis massa. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Auctor augue mauris augue neque gravida in fermentum. At risus viverra adipiscing at. Morbi blandit cursus risus at ultrices mi tempus imperdiet nulla. Lacinia quis vel eros donec ac odio. Mi bibendum neque egestas congue quisque egestas. Fermentum dui faucibus in ornare.

Arcu cursus euismod quis viverra nibh. Lobortis mattis aliquam faucibus purus in massa. Eget arcu dictum varius duis at consectetur lorem. Vulputate sapien nec sagittis aliquam malesuada bibendum. Nisi quis eleifend quam adipiscing. Turpis massa tincidunt dui ut. Nibh mauris cursus mattis molestie a iaculis at. Gravida arcu ac tortor dignissim convallis aenean. Pellentesque sit amet porttitor eget dolor morbi non. Nibh praesent tristique magna sit. Duis ut diam quam nulla porttitor massa id. Sit amet nulla facilisi morbi tempus iaculis urna. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus.

Mi bibendum neque egestas congue quisque egestas diam. Aliquet enim tortor at auctor urna. Aliquet eget sit amet tellus. Ut consequat semper viverra nam libero. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Laoreet non curabitur gravida arcu ac tortor dignissim. Pulvinar etiam non quam lacus suspendisse faucibus. Odio eu feugiat pretium nibh ipsum consequat. Orci nulla pellentesque dignissim enim. Auctor augue mauris augue neque gravida in. Donec massa sapien faucibus et molestie. Quam quisque id diam vel. Tincidunt dui ut ornare lectus sit. At auctor urna nunc id cursus metus. Euismod quis viverra nibh cras pulvinar mattis nunc sed blandit.""";

buttonStyle() => OutlinedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: .5,
          color: Colors.black,
        ),
      ),
      elevation: 5.0,
      shadowColor: Colors.black,
    );

Widget backImageButton(context) => IconButton(
      onPressed: () => Navigator.pop(context),
      icon: SvgPicture.string(
        backButton,
        height: 20,
        width: 20,
      ),
    );
