import 'package:bloc/bloc.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color colorr = const Color(0xffE7D8C9);
  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoading());
    await Future.delayed(const Duration(seconds: 2), () {
      try {
        var box = Hive.box<NoteModel>("note_box");
        note.date =
            "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
        note.color = colorr.value;
        box.add(note);
        emit(AddNoteSuccess());
      } catch (e) {
        emit(AddNoteFailure(errorMessage: e.toString()));
      }
    });
  }
}
