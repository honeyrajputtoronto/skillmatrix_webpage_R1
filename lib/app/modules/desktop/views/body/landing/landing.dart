import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
        child: Padding(
          key: itemKey1,
          padding: const EdgeInsets.only(left: 50,right: 50,bottom: 80.0),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: Container(
                    width: 50.w,
                    height: 300,
                    child: const CubeAnimation(),
                  ),
                ),
                GradientBox(
                  width: 100.w,
                  height: 20.h,
                  radius: 25,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 2.8.w,
                              width: 12.0.w,
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
                                  style: TextStyle(fontSize: 4.sp),
                                ),
                              ),
                            ),
                            Container(
                              height: 2.8.w,
                              width: 12.0.w,
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
                                  style: TextStyle(fontSize: 4.sp),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(flex: 41, child: SizedBox())
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: SizedBox(
                child: Image.asset(
                  'assets/images/Knockout.png',
                  height: 25.w,
                ),
              ),
            )
          ]),
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