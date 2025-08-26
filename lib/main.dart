import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view.dart';

void main(){
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   NotesView.routeName:(context)=>NotesView(),
      //   EditNoteView.routeName:(context)=>EditNoteView(),
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home: NotesView(),
    );
  }
}
