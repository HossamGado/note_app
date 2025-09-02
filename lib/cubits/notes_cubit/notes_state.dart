import '../../models/note_model.dart';

abstract class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

