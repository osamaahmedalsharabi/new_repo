

import 'package:flutter/material.dart';

class CustomIconAppBarWidget extends StatelessWidget {
  const CustomIconAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withOpacity(0.08),
      ),
      child: const Icon(
        Icons.search,
        size: 32,
      ),
    );
  }
}
