import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_text.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/scroll_controller.dart';

class Leader extends StatelessWidget {
  const Leader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Padding(
        key: itemKey3,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientText(
              "Get Inspired by our industry leaders",
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 232, 110, 128),
                  Color.fromARGB(255, 232, 156, 120),
                ],
              ),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 7.sp,
                //height: 1.16
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Container(
                // color: Colors.blue.withOpacity(0.23),
                child: Text(
                  "Every year, leaders in the tech industry join SkillMatrix to speak ,  and mentor students",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 3.5.sp,
                      color: Colors.white,
                      height: 1.56),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              // color: Colors.blue.withOpacity(0.23),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 33,
                    child: Stack(
                      children: [
                        const AspectRatio(
                          aspectRatio: 1.0,
                          child: GradientBox(
                            height: 196.45,
                            radius: 25,
                          ),
                        ),
                        Image.asset(
                          "assets/images/faraz.png",
                        ),
                      ],
                    ),
                  ),
                  const Expanded(flex: 4, child: SizedBox()),
                  Expanded(
                    flex: 63,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              _launchUrl(
                                  'https://www.linkedin.com/in/faraz-javaheri/');
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/linkdIn.png",
                                  height: 30,
                                ),
                                // AssetImage('assets/icons/linkdIn.png'),
                                const SizedBox(
                                  width: 20,
                                ),
                                GradientText(
                                  "Faraz Javaheri",
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 232, 110, 128),
                                      Color.fromARGB(255, 232, 156, 120),
                                    ],
                                  ),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 5.45.sp,
                                      height: 1.59),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.6.h,
                          ),
                          Text(
                            "Experienced operations/supply chain manager and business development professional with a background in engineering, boasting 10 years of expertise in planning, and operations, worked at both prominent start-ups and established corporations. Known for pitching skills and an entrepreneurial mindset. Skilled in identifying new business opportunities, cultivating client relationships, and implementing effective operational strategies. Passionate about entrepreneurship, innovation, and delivering customer-centric solutions.",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 3.5.sp,
                                color: Colors.white,
                                height: 1.59),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
