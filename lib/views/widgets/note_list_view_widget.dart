
import 'package:fifth_note_app/views/widgets/note_item_widget.dart';
import 'package:flutter/material.dart';

class NoteListViewWidget extends StatelessWidget {
  const NoteListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItemWidget(),
          );
        },
      ),
    );
  }
}
