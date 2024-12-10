import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/edit_form_widget.dart';
import 'package:flutter/material.dart';

class BodyEditView extends StatelessWidget {
  final NoteModel note;
  const BodyEditView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: EditFormWidget(
        note: note,
      ),
    );
  }
}
