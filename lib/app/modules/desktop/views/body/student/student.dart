import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../utilities/gradient_text.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final List<String> imagePaths = [
    'participants/1.jpg',
    'participants/2.jpg',
    'participants/3.jpg',
    'participants/4.jpg',
    'participants/5.jpg',
    'participants/6.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GradientText(
                  'Student of the Month',
                  style: TextStyle(
                      fontSize: 8.sp, fontWeight: FontWeight.bold),
                  gradient: const LinearGradient(
                      colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ScrollLoopAutoScroll(
              enableScrollInput: false,
              duration: const Duration(seconds: 300),
              gap: 0,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),
                    child: Container(
                      height: 250,
                      width: 195,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 0.2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: const Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 160,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      imagePaths[0],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 160 -
                                    15 -
                                    8, //minus height of profile ,-8 for padding
                                child: CircleAvatar(
                                  radius: 34,
                                  backgroundColor:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      imagePaths[1],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Python",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 15),
                                ),
                                Text(
                                  "April",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lorem ipsum splash",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
