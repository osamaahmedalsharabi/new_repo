import 'package:flutter/material.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Text(
                "In this project I have to create local app with git  flskdfj dslkfj sdalkfj asdlkfj asldk fasl df s sldakfj asdlf s slkdfj dslkf jsdlkf dsdlkf jsadklf jsdf sdjkfjowieafj sakdljf asldfs sdlfkjds lkfj sdlkfj sdlkfj alksd flskjf sd",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              trailing: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.edit,
                  //     color: Colors.black,
                  //     size: 32,
                  //   ),
                  // ),
                ],
              ),
            ),
            const Text(
              "2024/12/6",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
