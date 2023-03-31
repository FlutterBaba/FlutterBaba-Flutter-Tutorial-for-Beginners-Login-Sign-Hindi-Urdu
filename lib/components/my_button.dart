import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final bool isOutlineButton;
  final void Function()? onPressed;
  const MyButton(
      {super.key,
      required this.buttonText,
      this.onPressed,
      this.isOutlineButton = false});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isOutlineButton ? Colors.transparent : kTextColor,
          border: Border.all(color: kTextColor),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: isOutlineButton ? kTextColor : const Color(0xff131429),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
