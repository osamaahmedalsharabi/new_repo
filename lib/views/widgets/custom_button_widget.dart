import 'package:fifth_note_app/cubit/add_note/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.06,
            decoration: BoxDecoration(
              color: const Color(0xff63FFDA),
              borderRadius: BorderRadius.circular(8),
            ),
            child: state is AddNoteLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : const Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
