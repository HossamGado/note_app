import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'constants/constants.dart';

void main()async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
        home: NotesView(),
      ),
    );
  }
}
