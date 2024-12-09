import 'package:fifth_note_app/views/widgets/body_edit_view.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyEditView(),
      ),
    );
  }
}
