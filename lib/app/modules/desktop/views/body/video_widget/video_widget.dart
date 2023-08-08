import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../../../../utilities/gradient_text.dart';
import '../../../../../../utilities/scroll_controller.dart';


class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: true,
        showFullscreenButton: true,
        loop: false,
      ),
    );
    _controller.setFullScreenListener(
          (isFullScreen) {
        log('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      },
    );

    _controller.cueVideoById(
      startSeconds: 0, videoId: 'EILuAN6GYqg',
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50.h,
              width: 40.w,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),
            // const SizedBox(
            //   width: 30,
            // ),
            Column(
              children:[
                GradientText(
                  'How does it work?',
                  style: TextStyle(
                      fontSize: 7.sp, fontWeight: FontWeight.bold),
                  gradient: const LinearGradient(
                      colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 40.w,
                  child: Text(
                    'when you start a knockout competition you are matched with a student from other university who also joined under the same subject as you did, and from there you both get to battle each other by answering assessments with in 30-45 seconds, depending on the question which requires both accuracy and speed to win. Winners will rise on the leaderboard until, there is only one winner among all the universities participating in the knockout competition.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),

              ]
            )
          ],
        ),
      ),
    );
  }
}
