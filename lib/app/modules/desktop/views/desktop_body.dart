import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/competition/competition.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/student/student.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/university/university.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/download_app.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/sponsors/sponsors.dart';
import '../../../../utilities/scroll_controller.dart';
import 'body/mentors_widget/mentors_widget.dart';
import 'body/faqs_widget/faq.dart';
import 'body/footer/footer.dart';
import 'body/header/header.dart';
import 'body/leader/leader.dart';
import 'body/landing/landing.dart';
import 'body/university_modules/coming_soon.dart';
import 'body/university_modules/gamification.dart';
import 'body/university_modules/tournaments.dart';
import 'body/video_widget/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/slantlinepainter.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/launching_soon.dart';
import 'dart:async';

RxInt i = 0.obs;
Color  webcolor1 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.5);
Color  webcolor2 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.28);

class UniButton extends StatefulWidget {
  const UniButton({Key? key}) : super(key: key);

  @override
  _UniButtonState createState() => _UniButtonState();
}

class _UniButtonState extends State<UniButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 00),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => setState(() {
              webcolor2 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.5);
              webcolor1 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.28);
              i.value = 1;
            }),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: webcolor1,
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 133, 132, 178)
                  )
              ),
              height: 7.2.h, //7.6.h,
              width: 12.w, //12.w
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "For Universities",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 4.sp,
                        color: const Color.fromARGB(224, 251, 251, 252),
                        height: 1.21),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          // CustomPaint(
          //   size: Size(1.w, 5.w),
          //   painter: SlantLinePainter(),
          // ),
          // SizedBox(width: 2.w),
          InkWell(
            onTap: () => setState(() {
              webcolor1 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.5);
              webcolor2 = const Color.fromARGB(255, 192, 192, 208).withOpacity(0.28);
              i.value = 0;
            }),
            child: Container(
              height: 7.2.h,
              width: 12.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: webcolor2,
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 133, 132, 178)
                  )
              ),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "For Students",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 4.sp,
                        color: const Color.fromARGB(224, 251, 251, 252),
                        height: 1.21),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> WidgetList = [
   Column(
    children: [
      const Header(),
      SizedBox(
        height: 2.h,
      ),
      const UniButton(),
      const Landing(),
      const Competition(),
      const Student(),
      const University(),
      const VideoWidget(),
      // const Leader(),
      // const MentorsWidget(),
      const FaqWidget(),
      const Sponsors(),
      const Footer(),
    ],
  ),
   Column(
      children: [
    const Header(),
    SizedBox(
      height: 2.h,
    ),
    const UniButton(),
    SizedBox(
      height: 7.h,
    ),
    const ComingSoon(),
    SizedBox(
      height: 7.h,
    ),
    const Gamification(),
    SizedBox(
      height: 7.h,
    ),
    const Tournaments(),



    // Image.asset(
    //   "assets/images/w1.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w2.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w3.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w4.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w5.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w6.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w7.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w8.png",
    //   fit: BoxFit.cover,
    // ),
    // Image.asset(
    //   "assets/images/w9.png",
    //   fit: BoxFit.cover,
    // ),
    const Sponsors(),
    const Footer(),
  ]),
];

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => WidgetList[i.value]);
  }
}
