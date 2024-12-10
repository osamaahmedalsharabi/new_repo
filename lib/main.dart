import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await initHive();
  runApp(const NoteApp());
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Hive.openBox<NoteModel>('note_box');
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
        fontFamily: "Poppins"
      ),
      home: const HomeView(),
    );
  }
}
