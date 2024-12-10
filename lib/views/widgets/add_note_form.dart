import 'package:fifth_note_app/cubit/add_note/add_note_cubit.dart';
import 'package:fifth_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/custom_button_widget.dart';
import 'package:fifth_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final String formatDate =
      "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
              onSaved: (data) {
                title = data;
              },
              hintText: "Title"),
          const SizedBox(height: 16),
          CustomTextField(
            onSaved: (data) {
              subtitle = data;
            },
            hintText: "Contant",
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          CustomButtonWidget(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
                BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: formatDate,
                    color: Colors.blue.value));
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
