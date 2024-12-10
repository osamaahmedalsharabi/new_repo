import 'package:fifth_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItemWidget extends StatelessWidget {
  final NoteModel note;
  const NoteItemWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const EditView()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  note.subtitle,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
                trailing: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                note.date,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
