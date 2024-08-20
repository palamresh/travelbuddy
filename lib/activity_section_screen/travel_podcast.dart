// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TravelPodCaset extends StatefulWidget {
  const TravelPodCaset({super.key});

  @override
  State<TravelPodCaset> createState() => _TravelPodCasetState();
}

class _TravelPodCasetState extends State<TravelPodCaset> {
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller1;

  @override
  void initState() {
    super.initState();
    const videoURL = 'https://www.youtube.com/watch?v=FYqd567qgno';

    const video = "https://www.youtube.com/watch?v=gOXzBkBWUn0";
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(video) ?? '',
      flags: const YoutubePlayerFlags(
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Travel PodCast',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: h * .03,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              //   _controller.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '1.Travel Mentor',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: h * .05,
          ),
          YoutubePlayer(
            controller: _controller1,
            showVideoProgressIndicator: true,
            onReady: () {
              _controller1.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '2.Travelling Guide',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
