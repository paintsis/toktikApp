import 'package:toktok/domain/datasources/data_post_datasources.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/domain/repositories/video_post_repositorie.dart';

class VideoPostRepositoryImpl implements VideoPostRepositorie {
  final VideoPostDataSource videoDatasource;

  VideoPostRepositoryImpl({required this.videoDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideoByPage(int page) {
    return videoDatasource.getTrandingVideoByPage(page);
  }
}
