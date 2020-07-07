import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoBodyP extends StatefulWidget {

  final String id;

  VideoBodyP({this.id});

  @override
  _VideoBodyPState createState() => _VideoBodyPState();
}

class _VideoBodyPState extends State<VideoBodyP> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=SUt8q0EKbms&feature=youtu.be";
  

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