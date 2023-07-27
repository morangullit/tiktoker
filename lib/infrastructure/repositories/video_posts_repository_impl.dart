

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImp implements VideoPostRepository{

  final VideoPostDataSouerce videoPostDataSouerce;

  VideoPostsRepositoryImp({
     required this.videoPostDataSouerce
    });

  @override
  Future<List<VideosPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideosPost>> getTrendinVideosByPage(int page) {
    return videoPostDataSouerce.getTrendinVideosByPage(page);
  }

}