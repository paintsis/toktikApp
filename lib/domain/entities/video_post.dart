class VideoPost {
  final String captio;
  final String videoUrl;
  final int? likes;
  final int? views;

  VideoPost(
      {required this.captio, required this.videoUrl, this.likes, this.views});
}
