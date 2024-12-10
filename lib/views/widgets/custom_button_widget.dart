import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  const CustomButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height * 0.06,
        decoration: BoxDecoration(
          color: const Color(0xff63FFDA),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          "Add",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
