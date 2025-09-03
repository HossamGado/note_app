import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes(){
      var notesBox=Hive.box<NoteModel>(kNotesBox);
     notes=notesBox.values.toList();
     
     emit(NotesSuccess());
     
  }


}
