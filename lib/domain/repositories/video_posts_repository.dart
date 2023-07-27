

import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {

  Future<List<VideosPost>> getFavoriteVideoByUser(String userID);

  Future<List<VideosPost>> getTrendinVideosByPage(int page);


}