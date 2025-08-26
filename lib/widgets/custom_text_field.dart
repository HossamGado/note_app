import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.maxLines});
  final String hint;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintStyle:const  TextStyle(
          color: kPrimaryColor,
        ),
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),

      ),

    );
  }
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color??Colors.white,
        )
    );
  }
}
