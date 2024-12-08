import 'package:fifth_note_app/views/widgets/custom_app_bar_widget.dart';
import 'package:fifth_note_app/views/widgets/note_list_view_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBarWidget(),
          SizedBox(
            height: 8,
          ),
          NoteListViewWidget()
        ],
      ),
    );
  }
}
