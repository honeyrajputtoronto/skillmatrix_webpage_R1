import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/app/modules/mobile/views/body/landing/rive_animation.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/scroll_controller.dart';
import 'cube_animation.dart';


class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: itemKey6,
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-1,0),
            colors: [
              Color.fromARGB(150, 114, 17, 120),
              Color.fromARGB(255, 10, 22, 44),
            ],
            radius: 0.4,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              height: Get.height * 0.3,
              child: const CubeAnimation(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 10.w,
                  width: 30.w,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFE86E80),
                          Color(0xFFE89C78),
                        ],
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius:
                      BorderRadius.all(Radius.circular(50.0))),
                  child: ElevatedButton(
                    onPressed: () {
                      _launchUrl(
                          'https://skillmatrix-application.web.app/#/login');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 4.w),
                    ),
                  ),
                ),
                Container(
                  height: 10.w,
                  width: 30.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE86E80), width: 2),
                      shape: BoxShape.rectangle,
                      borderRadius:
                      const BorderRadius.all(Radius.circular(50.0))),
                  child: ElevatedButton(
                    onPressed: () {
                      _launchUrl(
                          'https://skillmatrix-application.web.app/#/registration');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 4.w),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.w,
            ),
            Stack(
              clipBehavior: Clip.none,
              children :[
               GradientBox(
                width: 90.w,
                height: 25.w,
                radius: 25,
              ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/Knockout.png',
                      width: 100.w,
                    ),
                  ),
                )
              ],
            ),
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