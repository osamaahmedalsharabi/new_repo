import 'package:fifth_note_app/views/widgets/custom_button_widget.dart';
import 'package:fifth_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16),
        child: const Column(
          children: [
            CustomTextField(hintText: "Title"),
            SizedBox(height: 16),
            CustomTextField(
              hintText: "Contant",
              maxLines: 5,
            ),
            SizedBox(height: 32),
            CustomButtonWidget()
          ],
        ),
      ),
    );
  }
}
