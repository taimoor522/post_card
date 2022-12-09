import 'package:flutter/material.dart';
import 'package:social_media/gradient_round_border.dart';

import 'card_icon.dart';
import 'clipper.dart';
import 'constants.dart';

class PostCard extends StatefulWidget {
  final String profile;
  final String post;
  final String name;
  final String time;
  const PostCard(
      {super.key,
      required this.profile,
      required this.post,
      required this.name,
      required this.time});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.decelerate)
        .drive(Tween<double>(begin: 80, end: 300));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return GestureDetector(
          onTap: () => _controller.isCompleted ? _controller.reverse() : _controller.forward(),
          child: Container(
            padding: const EdgeInsets.only(top: 5),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.5),
            height: _animation.value,
            decoration: BoxDecoration(
              gradient: greyGradient,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: GradientBorder(
                      child: Image(
                    image: AssetImage(widget.profile),
                    fit: BoxFit.cover,
                  )),
                  title: Text(
                    widget.name,
                    style: const TextStyle(fontFamily: patrickHand, fontSize: 20),
                  ),
                  subtitle: Text(
                    widget.time,
                    style: const TextStyle(fontSize: 10),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_animation.value <= 150) ...[
                        const CardIcon(Icons.mode_comment_rounded),
                        const CardIcon(Icons.favorite_rounded),
                      ],
                      const CardIcon(Icons.bookmark_rounded),
                    ],
                  ),
                ),
                if (_animation.value >= 150)
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipPath(
                          clipper: ContainerClipper(),
                          child: Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.post),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: const [
                                  CardIcon(Icons.mode_comment_rounded),
                                  CardIcon(Icons.favorite_rounded),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
