import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(
          color: Colors.white,
          fontSize: 28
        ),),
        Spacer(),
        CustomIcon(icon: icon),
      ],
      
    );
  }
}
