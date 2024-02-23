import 'package:flutter/material.dart';
import 'package:toktok/domain/entities/video_post.dart';
//import 'package:toktok/infraestructure/models/local_video_model.dart';
import 'package:toktok/infraestructure/repositories/video_post_repositorie_impl.dart';
//import 'package:toktok/shared/data/local_video_post.dart';

class DisccoverProvider extends ChangeNotifier {
  final VideoPostRepositoryImpl videoRepository;
  bool initialLoading = true;

  List<VideoPost> videos = [];

  DisccoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    /* final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList(); */

    final newVideos = await videoRepository.getTrandingVideoByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
