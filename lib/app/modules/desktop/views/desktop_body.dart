import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/student/student.dart';
import 'body/mentors_widget/mentors_widget.dart';
import 'body/faqs_widget/faq.dart';
import 'body/footer/footer.dart';
import 'body/header/header.dart';
import 'body/leader/leader.dart';
import 'body/landing/landing.dart';
import 'body/video_widget/video_widget.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        Header(),
        Landing(),
        Student(),
        VideoWidget(),
        Leader(),
        MentorsWidget(),
        FaqWidget(),
        Footer(),
      ],
    );
  }
}



