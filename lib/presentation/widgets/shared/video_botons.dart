import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktok/config/helpers/human_format.dart';
import 'package:toktok/domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;
  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likes!,
            iconData: Icons.favorite,
            iconColor: Colors.red),
        const SizedBox(
          height: 20,
        ),
        _CustomIconButton(
            value: video.likes!, iconData: Icons.remove_red_eye_outlined),
        const SizedBox(
          height: 20,
        ),
        SpinPerfect(
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
              value: 0, iconData: Icons.play_circle_fill_outlined),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
