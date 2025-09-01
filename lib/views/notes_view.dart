import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.add, color: Colors.black,),
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return AddNoteButtonSheet();
                  });
            }),
        body: NoteViewBody(),
      ),
    );
  }
}
