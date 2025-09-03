import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title, this.onPressed});
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(
          color: Colors.white,
          fontSize: 28
        ),),
        Spacer(),
        CustomIcon(
            onPressed:onPressed,
            icon: icon),
      ],
      
    );
  }
}
