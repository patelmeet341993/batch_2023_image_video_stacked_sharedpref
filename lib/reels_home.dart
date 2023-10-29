import 'package:flutter/material.dart';
import 'package:image_picker/video_player_home.dart';


class ReelsHome extends StatefulWidget {
  const ReelsHome({super.key});

  @override
  State<ReelsHome> createState() => _ReelsHomeState();
}

class _ReelsHomeState extends State<ReelsHome> {


  List<String> videos=["https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https:/commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mainBody(),
      ),
    );
  }

  Widget mainBody(){
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (ctx,index){
        return VideoPlayerHome(url: videos[index],);
      },

    );
  }
}
