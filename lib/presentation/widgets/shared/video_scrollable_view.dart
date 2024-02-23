import 'package:flutter/material.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/presentation/widgets/shared/video_botons.dart';
import 'package:toktok/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (BuildContext context, int index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            //videoPlayer
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.captio,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButton(
                video: videoPost,
              ),
            )
          ],
        );
      },
    );
  }
}
