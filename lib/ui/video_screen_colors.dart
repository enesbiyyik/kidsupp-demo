import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoColors extends StatefulWidget {

  final String id;

  VideoColors({this.id});

  @override
  _VideoColorsState createState() => _VideoColorsState();
}

class _VideoColorsState extends State<VideoColors> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=ybt2jhCQ3lA&feature=youtu.be";
  

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