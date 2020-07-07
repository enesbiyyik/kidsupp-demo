import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoSeed extends StatefulWidget {

  final String id;

  VideoSeed({this.id});

  @override
  _VideoSeedState createState() => _VideoSeedState();
}

class _VideoSeedState extends State<VideoSeed> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=TE6xptjgNR0&feature=youtu.be";
  

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