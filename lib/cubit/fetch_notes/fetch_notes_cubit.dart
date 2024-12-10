import 'package:bloc/bloc.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'fetch_notes_state.dart';

class FetchNotesCubit extends Cubit<FetchNotesState> {
  FetchNotesCubit() : super(FetchNotesInitial());

  fetchNotes() {
    var box = Hive.box<NoteModel>("note_box");
    List<NoteModel> notes = box.values.toList();
    if (notes.isNotEmpty) {
      emit(FetchNotesCompletely());
    } else {
      emit(FetchNotesEmpty(empty: "there no notes"));
    }
    return notes;
  }
}
