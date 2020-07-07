import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoFS extends StatefulWidget {

  final String id;

  VideoFS({this.id});

  @override
  _VideoFSState createState() => _VideoFSState();
}

class _VideoFSState extends State<VideoFS> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=owppK-GHPTU&feature=youtu.be";
  

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