import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text("Add",style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800
        ),),
      ),
    );
  }
}
