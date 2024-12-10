import 'package:bloc/bloc.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    try {
      var box = Hive.box<NoteModel>("note_box");
      box.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
