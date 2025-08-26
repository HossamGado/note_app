import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [SizedBox(height: 50),
        CustomAppBar(icon: Icons.done,),
        SizedBox(height: 50,),
        CustomTextField(hint: "Title"),
        SizedBox(height: 16,),
        CustomTextField(
            maxLines: 5,
            hint: "Content"),
      ]),
    );
  }
}
