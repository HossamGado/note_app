abstract class NotesStates{}
class AddNoteInitState extends NotesStates{}
class AddNoteLoadingState extends NotesStates{}
class AddNoteSuccessState extends NotesStates{}
class AddNoteFailureState extends NotesStates{
  final String errMessage;
  AddNoteFailureState(this.errMessage);
}
