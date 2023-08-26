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
      width: 100.w,
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Padding(
        key: itemKey3,
        padding: EdgeInsets.only(left: 4.w,right: 4.w,bottom : 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  "Get Inspired by our",
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 232, 110, 128),
                      Color.fromARGB(255, 232, 156, 120),
                    ],
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 9.w,
                    //height: 1.16
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  "industry leaders",
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 232, 110, 128),
                      Color.fromARGB(255, 232, 156, 120),
                    ],
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 9.w,
                    //height: 1.16
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Text(
                "Every year, leaders in the tech industry join SkillMatrix to speak ,  and mentor students",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 4.w,
                    color: Colors.white,
                    height: 1.56),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Container(
              // color: Colors.blue.withOpacity(0.23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.w,
                            height: 80.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                                color: const Color.fromRGBO(255, 255, 255, 0.2),
                              ),
                            ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/faraz.png",
                        height: 80.w,

                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/linkdIn.png",
                              height: 10.w,
                            ),
                            // AssetImage('assets/icons/linkdIn.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                _launchUrl(
                                    'https://www.linkedin.com/in/faraz-javaheri/');
                              },
                              child: GradientText(
                                "Faraz Javaheri",
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 232, 110, 128),
                                    Color.fromARGB(255, 232, 156, 120),
                                  ],
                                ),
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 5.w,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Experienced operations/supply chain manager and business development professional with a background in engineering, boasting 10 years of expertise in planning, and operations, worked at both prominent start-ups and established corporations. Known for pitching skills and an entrepreneurial mindset. Skilled in identifying new business opportunities, cultivating client relationships, and implementing effective operational strategies. Passionate about entrepreneurship, innovation, and delivering customer-centric solutions.",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 4.w,
                              color: Colors.white,
                              ),
                        ),
                      ],
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
