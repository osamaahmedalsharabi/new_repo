import 'package:fifth_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:fifth_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class BodyEditView extends StatelessWidget {
  const BodyEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBarWidget(
            title: "Edit",
            icon: Icons.done,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: CustomTextField(hintText: "Title"),
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
