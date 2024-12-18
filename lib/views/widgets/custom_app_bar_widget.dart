import 'package:fifth_note_app/views/widgets/custom_icon_app_bar_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onTap;
  const CustomAppBarWidget({
    super.key,
    required this.title,
    required this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: CustomIconAppBarWidget(
              icon: icon,
            ),
          ),
        ],
      ),
    );
  }
}
