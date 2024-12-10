import 'package:fifth_note_app/cubit/add_note/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  final bool isActive;
  const ColorItem({super.key, required this.color, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: color,
      child: isActive
          ? const FittedBox(
              child: Icon(
                Icons.done,
                size: 1500,
              ),
            )
          : null,
    );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int? currentIndex;
  List<Color> colors = const [
    Color(0xffE7D8C9),
    Color(0xff92DCE5),
    Color(0xffF8F7F9),
    Color(0xffF7EC59),
    Color(0xffFF66D8),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.separated(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).colorr = colors[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }
}
