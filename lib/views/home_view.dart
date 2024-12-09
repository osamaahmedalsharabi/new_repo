import 'package:fifth_note_app/views/widgets/custom_model_bottom_sheet.dart';
import 'package:fifth_note_app/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                )),
                context: context,
                builder: (context) {
                  return const CustomModelBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
