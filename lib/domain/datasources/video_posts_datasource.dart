

import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSouerce {

  Future<List<VideosPost>> getFavoriteVideoByUser(String userID);

  Future<List<VideosPost>> getTrendinVideosByPage(int page);


}