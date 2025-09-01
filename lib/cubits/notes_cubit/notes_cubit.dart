import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllnotes()async{

    try{
      var notesBox=Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes=notesBox.values.toList();
      emit(NotesSuccess(notes));
    }catch(e){
      debugPrint("errMessage: ${e.toString()}");
    }
  }


}
