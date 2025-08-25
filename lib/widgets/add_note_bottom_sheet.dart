import 'package:flutter/material.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height*0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder()
                ),

              ),
            ),
            SizedBox(
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hint: Center(child: Text(
                        "content"
                    ),),
                    border: OutlineInputBorder()
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
