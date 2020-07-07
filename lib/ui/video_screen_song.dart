import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoSong extends StatefulWidget {

  final String id;

  VideoSong({this.id});

  @override
  _VideoSongState createState() => _VideoSongState();
}

class _VideoSongState extends State<VideoSong> {

  YoutubePlayerController _controller;
  String videoURL = "https://www.youtube.com/watch?v=4yaGLes18Ls&feature=youtu.be";
  

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