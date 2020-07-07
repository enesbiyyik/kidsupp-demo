import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoFruit extends StatefulWidget {

  final String id;

  VideoFruit({this.id});

  @override
  _VideoFruitState createState() => _VideoFruitState();
}

class _VideoFruitState extends State<VideoFruit> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=VL_VmGm7Fos&feature=youtu.be";
  

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          print('Player is ready.');
        },
      ),
    );
  }
}