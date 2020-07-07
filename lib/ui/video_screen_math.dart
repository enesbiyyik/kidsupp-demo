import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoMath extends StatefulWidget {

  final String id;

  VideoMath({this.id});

  @override
  _VideoMathState createState() => _VideoMathState();
}

class _VideoMathState extends State<VideoMath> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=qM7B2nwpV1M&feature=youtu.be";
  

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