import 'package:flutter/material.dart';

void main(){
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Note App",style: TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
