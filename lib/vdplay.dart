import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class vdplay extends StatefulWidget {
  const vdplay({super.key});

  @override
  State<vdplay> createState() => _vdplayState();
}

class _vdplayState extends State<vdplay> {

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.networkUrl(Uri.parse(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
      ),
    );
  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          children: [
            Container(
              color: Colors.black,
              height: 300,
              width: 300,
            child: FlickVideoPlayer(
            flickManager: flickManager
            ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_down)
                ],
              ),
            )
          ],
        ),
      );
  }
}

