

import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import '../../shared/data/local_video_post.dart';

class LocalVideoDataSources implements VideoPostDataSouerce{
  @override
  Future<List<VideosPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideosPost>> getTrendinVideosByPage(int page) async {
   
    await Future.delayed(const Duration(seconds: 2));

    final List<VideosPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity() 
      ).toList();

      return newVideos;

  }



}