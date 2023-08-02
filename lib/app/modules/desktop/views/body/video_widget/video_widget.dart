import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../../../../utilities/gradient_text.dart';


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

    _controller.loadVideoById(
      startSeconds: 0, videoId: 'EILuAN6GYqg',
    );

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    fontSize: 6.sp, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 30.w,
                child: Text(
                  'We are a group of students from the University of Toronto who are passionate about helping students in need. We are a group of students from the University of Toronto.',
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
    );
  }
}
