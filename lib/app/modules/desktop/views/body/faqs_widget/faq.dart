import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../utilities/gradient_text.dart';
import '../../../../../../utilities/scroll_controller.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Padding(
        key: itemKey4,
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              'Frequently Asked Questions',
              style: TextStyle(
                  fontSize: 7.sp, fontWeight: FontWeight.bold),
              gradient: const LinearGradient(
                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
            ),
            SizedBox(
              height: 5.h,
            ),
            ExpansionTile(
              title: Text(
                "What is SKillMatrix ?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    "We provide a one-on-one learning experience in knockout series form, whereas, when you start a game you are matched with a player who also joined under the same subject as you did, and from there you both get to battle each other by answering assessments that require both accuracy and speed to win. Winners will rise on the leaderboard until there is only one winner among all the universities participated in the knockout competition.",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.center,
              title: Text(
                "How much does it cost to attend Skillmatrix competitions?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'Admission to Skillmatrix competition is completely free! We will provide resources and mentorship our student need to build their future.',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "What kind of events will be there?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'Previously, we’ve held virtual python knockout competition in TMU and awarded CAD100. Other events also explore mentorships and networking. Whether it’s for relaxation or health, novelty or competition, our team has something exciting prepared for you to enjoy!',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "I’m not currently enrolled as a student, can I still attend Skillmatrix competitions?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'SkillMatrix is geared towards students who are interested in assessing their learning, but we also want to open the doors for anyone who wants to learn. If your situation falls within this category, please reach out to us at hello@skillmatrix.com and we can chat more regarding certain exemptions!',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Will knockout-competition held In-person or Virtual?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'SkillMatrix will be an in-person and virtual competitions, hosted at the Toronto Metropolitan University. Stay tuned to hear the latest updates by following our social media channels and signing up for our mailing list!',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Who can participate?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'Students from anywhere in the world and any educational level (including high school or doctoral degrees!) are welcome to apply for SkillMatrix Knockout Competitions!',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "What are covid-19 regulations?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'At this time, SKillMatrix"s COVID-19 policy is a living document. Our policy will reflect the local guidelines at the time of the event, as well as the global COVID-19 situation. Take a look at our COVID-19 policy for a detailed outline of the safety precautions that may be in place at the event.',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Who will decide my competitor?",
                style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  child: Text(
                    'SkillMatrix will find your best opponent on the based on your previous matches and scores. If the event is university oreinted then the selection will based on the university',
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
