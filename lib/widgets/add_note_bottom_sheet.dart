import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: "title"),
            SizedBox(height: 16),
            CustomTextField(maxLines: 5, hint: "content"),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
