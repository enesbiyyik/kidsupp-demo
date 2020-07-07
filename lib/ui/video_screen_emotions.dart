import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoEmotion extends StatefulWidget {

  final String id;

  VideoEmotion({this.id});

  @override
  _VideoEmotionState createState() => _VideoEmotionState();
}

class _VideoEmotionState extends State<VideoEmotion> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=akTRWJZMks0&feature=youtu.be";
  

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