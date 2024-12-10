import 'package:fifth_note_app/cubit/fetch_notes/fetch_notes_cubit.dart';
import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await initHive();
  runApp(const NoteApp());
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note_box');
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: false,
            fontFamily: "Poppins"),
        home: const HomeView(),
      ),
    );
  }
}
