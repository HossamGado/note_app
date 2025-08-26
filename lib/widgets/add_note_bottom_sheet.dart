import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: CustomTextField(hint: "title",),
          ),
          CustomTextField(
            maxLines: 5,
            hint: "content",),
        ],
      ),
    );
  }


}
