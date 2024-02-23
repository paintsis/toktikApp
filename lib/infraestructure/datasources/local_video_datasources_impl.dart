import 'package:toktok/domain/datasources/data_post_datasources.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/infraestructure/models/local_video_model.dart';
import 'package:toktok/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
