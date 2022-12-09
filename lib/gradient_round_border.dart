import 'package:flutter/material.dart';
import 'package:social_media/constants.dart';

class GradientBorder extends StatelessWidget {
  final ImageProvider? image;
  final Widget? child;

  const GradientBorder({super.key, this.child, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [bluishPink, pink, bluishPink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: child,
        ),
      ),
    );
  }
}
