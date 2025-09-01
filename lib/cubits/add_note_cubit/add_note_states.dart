abstract class AddNoteState {}

class AddNoteInitState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteFailureState extends AddNoteState {
  final String errMessage;

  AddNoteFailureState(this.errMessage);
}
