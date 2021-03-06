import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoABC extends StatefulWidget {

  final String id;

  VideoABC({this.id});

  @override
  _VideoABCState createState() => _VideoABCState();
}

class _VideoABCState extends State<VideoABC> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=Rr0uFzAOQus&feature=youtu.be";
  

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