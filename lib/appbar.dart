import 'package:flutter/material.dart';

import 'constants.dart';
import 'gradient_round_border.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      elevation: 0,
      backgroundColor: black,
      title: const Text(
        "Friend's Posts",
        style: TextStyle(
          color: pink,
          fontSize: 30,
          fontFamily: freehand,
        ),
      ),
      actions: const [
        UnconstrainedBox(
          child: GradientBorder(
            child: Icon(Icons.add),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
