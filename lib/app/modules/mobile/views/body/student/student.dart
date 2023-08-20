import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/gradient_text.dart';
import '../../../../../../utilities/scroll_controller.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final List<String> imagePaths = [
    'assets/participants/venkat.jpeg',
    "assets/icons/linkdIn.png",
    'assets/participants/3.jpg',
    'assets/participants/4.jpg',
    'assets/participants/5.jpg',
    'assets/participants/6.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      key: itemKey5,
      width: 100.w,
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: GradientText(
              'Student of the Month',
              style: TextStyle(
                  fontSize: 9.w, fontWeight: FontWeight.bold),
              gradient: const LinearGradient(
                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom : 20 + 10.w , top: 20),
            child: Container(
              //height: 250,
              width: 210,
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
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 160 -
                            15 -
                            8, //minus height of profile ,-8 for padding
                        child: InkWell(
                          onTap: () {
                            _launchUrl(
                                'https://www.linkedin.com/in/venkat-guru-prasad/');
                          },
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor:
                            const Color.fromRGBO(255, 255, 255, 0.5),
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: AssetImage(
                                imagePaths[1],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0 , right: 15.0 , bottom: 8.0 ,  top: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Python",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 15),
                        ),
                        const Spacer(),
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
                    padding: EdgeInsets.only(left:10.0 , right: 10.0 , bottom: 30.0 ,  top: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Venkat Guru Prasad",
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
    );
  }
}

Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}