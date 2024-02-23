import 'package:toktok/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getTrandingVideoByPage(int page);

  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
