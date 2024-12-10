import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/note_item_widget.dart';
import 'package:flutter/material.dart';

class NoteListViewWidget extends StatelessWidget {
  final List<NoteModel> notes;
  const NoteListViewWidget({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItemWidget(
              note: notes[index],
            ),
          );
        },
      ),
    );
  }
}
