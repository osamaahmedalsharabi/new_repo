import 'package:fifth_note_app/models/note_model.dart';
import 'package:fifth_note_app/views/widgets/color_list_widget.dart';
import 'package:flutter/material.dart';
class EditColorListWidget extends StatefulWidget {
  final NoteModel note;
  const EditColorListWidget({super.key, required this.note});

  @override
  State<EditColorListWidget> createState() => _EditColorListWidgetState();
}

class _EditColorListWidgetState extends State<EditColorListWidget> {
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
              widget.note.color = colors[index].value;
              setState(() {});
            },
            child: ColorItem(
              isActive: widget.note.color == colors[index].value,
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
