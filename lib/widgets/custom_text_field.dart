import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines=1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved:onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return "Field is required";
        }else{
          return null;
        }
      },
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
