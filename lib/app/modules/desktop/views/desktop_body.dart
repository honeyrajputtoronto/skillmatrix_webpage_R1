import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/student/student.dart';
import '../../../../utilities/scroll_controller.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ScrollToHide(
          duration: const Duration(milliseconds: 200),
            scrollController: _scrollController,
            height: headerSize,
            child: const Header()),
          SizedBox(
            height: Get.height,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: const Wrap(
                children: [
                  //Header(),
                  Landing(),
                  Student(),
                  VideoWidget(),
                  Leader(),
                  MentorsWidget(),
                  FaqWidget(),
                  Footer(),
                  //CubeAnimation()
                ],
              ),
            ),
          ),

      ],
    );
  }
}
