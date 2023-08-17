import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class TrophyAnimation extends StatefulWidget {
  const TrophyAnimation({super.key});

  @override
  State<TrophyAnimation> createState() => _TrophyAnimationState();
}

class _TrophyAnimationState extends State<TrophyAnimation> {

  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.network(
        'https://public.rive.app/community/runtime-files/5713-11162-animation.riv',
    );
  }
}

