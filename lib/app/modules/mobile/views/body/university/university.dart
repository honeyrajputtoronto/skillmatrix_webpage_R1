import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/gradient_text.dart';

final List<String> imagePaths = [
  'assets/university/11.png',
  "assets/university/12.png",
  'assets/university/13.png',
  'assets/university/14.png',
  'assets/university/15.png',
  'assets/university/17.png',
  'assets/university/18.png',
  // Add more image paths here
];

final List<String> imagePaths1 = [
  'assets/university/21.png',
  "assets/university/22.png",
  'assets/university/23.png',
  'assets/university/24.png',
  'assets/university/25.png',
  // Add more image paths here
];

class University extends StatefulWidget {
  const University({super.key});

  @override
  State<University> createState() => _UniversityState();
}

class _UniversityState extends State<University> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Column(
          children :[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w,),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientText(
                        'Meet the fellow students from',
                        style: TextStyle(
                            fontSize: 6.w, fontWeight: FontWeight.bold),
                        gradient: const LinearGradient(
                            colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                      ),
                    ],
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientText(
                    'all over the world',
                    style: TextStyle(
                        fontSize: 6.w, fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                  ),
                ],
              ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10 ,top: 20 ),
              child: SizedBox(
                width: 100.w,
                child: ScrollLoopAutoScroll(
                  // enableScrollInput: true,
                  duration: const Duration(seconds: 1500),
                  gap: 0,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i = 0; i < 7; i++)
                        makePhotoCard(i),
                    ],
                  ),

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20 + 10.w ,top: 10),
              child: SizedBox(
                width: 100.w,
                child: ScrollLoopAutoScroll(
                  reverseScroll: true,
                  // enableScrollInput: true,
                  duration: const Duration(seconds: 1500),
                  gap: 0,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i = 0; i < 5; i++)
                        makePhotoCard1(i),
                    ],
                  ),

                ),
              ),
            ),
          ]
      ),
    );
  }

}
Widget makePhotoCard(int i) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Image.asset(
      imagePaths[i],
      fit: BoxFit.cover,
      height: 5.h,
    ),
  );
}

Widget makePhotoCard1(int i) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Image.asset(
      imagePaths1[i],
      fit: BoxFit.cover,
      height: 5.h,
    ),
  );
}
