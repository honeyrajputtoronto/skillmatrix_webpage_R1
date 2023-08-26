import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hovering/hovering.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../utilities/scroll_controller.dart';
import '../../mobile/views/body/download_app/download_app.dart';
import '../../mobile/views/body/sponsors/sponsors.dart';
import '../../mobile/views/body/header/header.dart';
import '../../mobile/views/body/footer/footer.dart';
import '../../mobile/views/body/faq_widget/faq_widget.dart';
import '../../mobile/views/body/mentors_widget/mentors_widget.dart';
import '../../mobile/views/body/leader/leader.dart';
import '../../mobile/views/body/video_widget/video_widget.dart';
import '../../mobile/views/body/university/university.dart';
import '../../mobile/views/body/student/student.dart';
import '../../mobile/views/body/competition/competition.dart';
import '../../mobile/views/body/landing/landing.dart';
import '../controllers/mobile_controller.dart';

class MobileBody extends GetView<MobileController> {
  MobileBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: SliderDrawer(
        appBar: SliderAppBar(
          drawerIconColor: Colors.white,
          appBarPadding: EdgeInsets.zero,
           // appBarHeight: 5.h,
            appBarColor: const Color.fromARGB(255, 10, 22, 44),
            title: Text("Skillmatrix",
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.w700, color: Colors.white,))),
        slider: const MenuScreen(),
        sliderOpenSize: 50.w,
        key: drawerKey,
        child: const SingleChildScrollView(child: MainScreen()),
      ),
    );
  }
}

class MainScreen extends GetView<MobileController>  {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       // Header(),
        Landing(),
        AppDownload(),
        Competition(),
        Student(),
        University(),
        VideoWidget(),
        Leader(),
        MentorsWidget(),
        FaqWidget(),
        Sponsors(),
        Footer(),
      ],
    );
  }
}

class MenuScreen extends GetView<MobileController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 50.w,
      color: const Color.fromARGB(255, 18, 48, 105),
      child: Container(
        height: 100.h,
        width: 50.w,
        color: const Color.fromRGBO(10, 18, 48, 105),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/images/logo.png',
                height: 7.w,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      scrollToItem(itemKey6);
                      drawerKey.currentState?.closeSlider();
                    },
                    child: HoverContainer(
                      hoverDecoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide( //                   <--- left side
                            color: Color(0xFFE86E80),
                            width: 5.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      scrollToItem(itemKey5);
                      drawerKey.currentState?.closeSlider();
                    },
                    child: HoverContainer(
                      hoverDecoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide( //                   <--- left side
                            color: Color(0xFFE86E80),
                            width: 5.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Our Winners',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      scrollToItem(itemKey3);
                      drawerKey.currentState?.closeSlider();
                    },
                    child:HoverContainer(
                      hoverDecoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide( //                   <--- left side
                            color: Color(0xFFE86E80),
                            width: 5.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Mentors',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      scrollToItem(itemKey4);
                      drawerKey.currentState?.closeSlider();
                    },
                    child:HoverContainer(
                      hoverDecoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide( //                   <--- left side
                            color: Color(0xFFE86E80),
                            width: 5.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'FAQS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 10.w,
              width: 40.w,
              decoration: const BoxDecoration(gradient: LinearGradient(
                colors: <Color>[Color(0xFFE86E80), Color(0xFFE89C78)],
              ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
              child: ElevatedButton(
                onPressed: () {
                  _launchUrl(
                      'https://skillmatrix-application.web.app/');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent
                ),
                child: Text('JOIN NOW',style: TextStyle(fontSize: 6.w),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

