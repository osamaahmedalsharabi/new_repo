import 'package:fifth_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:fifth_note_app/views/widgets/note_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildListNoteWithCubit extends StatefulWidget {
  const BuildListNoteWithCubit({
    super.key,
  });

  @override
  State<BuildListNoteWithCubit> createState() => _BuildListNoteWithCubitState();
}

class _BuildListNoteWithCubitState extends State<BuildListNoteWithCubit> {
  @override
  void initState() {
    BlocProvider.of<FetchNotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNotesCubit, FetchNotesState>(
      builder: (context, state) {
        return state is FetchNotesEmpty
            ? Text(state.empty)
            : NoteListViewWidget(
                notes: BlocProvider.of<FetchNotesCubit>(context).fetchNotes(),
              );
      },
    );
  }
}
