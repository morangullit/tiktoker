import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video/fullscreen_player.dart';
import 'package:toktik/presentation/widgets/shared/video_player/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideosPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
  });


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideosPost videosPost = videos[index];

        return Stack(
          children: [
            // Video Player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videosPost.caption,
                videoUrl: videosPost.videoUrl,
              ),
            ),

            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child:VideoButtons(video: videosPost),
            
            )
          ],
        );


      },
    );
  }
}