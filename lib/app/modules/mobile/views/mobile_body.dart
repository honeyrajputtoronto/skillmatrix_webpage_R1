import 'package:flutter/material.dart';

import '../../mobile/views/body/landing/landing.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //Header(),
        Landing(),
        // Competition(),
        // Student(),
        // University(),
        // VideoWidget(),
        // Leader(),
        // MentorsWidget(),
        // FaqWidget(),
        // Footer(),
      ],
    );
  }
}



