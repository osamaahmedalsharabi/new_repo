import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/body_edit_view.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  final NoteModel note;
  const EditView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: BodyEditView(
          note: note,
        ),
      ),
    );
  }
}
