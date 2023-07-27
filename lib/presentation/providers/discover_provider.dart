import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';


class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideosPost> videos = [];

  DiscoverProvider({
    required this.videosRepository
    });

  Future<void> loadNextPage() async {

   /*  final List<VideosPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity() 
      ).toList(); */

    final newVideos = await videosRepository.getTrendinVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

}