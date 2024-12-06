import 'package:fifth_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBarWidget()],
    );
  }
}
