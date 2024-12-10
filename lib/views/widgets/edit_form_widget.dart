import 'package:fifth_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/color_list_widget.dart';
import 'package:fifth_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:fifth_note_app/views/widgets/custom_text_field.dart';
import 'package:fifth_note_app/views/widgets/edit_color_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditFormWidget extends StatefulWidget {
  final NoteModel note;
  const EditFormWidget({
    super.key,
    required this.note,
  });

  @override
  State<EditFormWidget> createState() => _EditFormWidgetState();
}

class _EditFormWidgetState extends State<EditFormWidget> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarWidget(
          title: "Edit",
          icon: Icons.done,
          onTap: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = subtitle ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CustomTextField(
              onChanged: (data) {
                title = data;
              },
              hintText: widget.note.title),
        ),
        CustomTextField(
          onChanged: (data) {
            subtitle = data;
          },
          hintText: widget.note.subtitle,
          maxLines: 5,
        ),
        const SizedBox(
          height: 16,
        ),
         EditColorListWidget(
          note: widget.note,
         )
      ],
    );
  }
}
