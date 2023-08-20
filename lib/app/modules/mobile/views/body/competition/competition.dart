import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/gradient_text.dart';
import '../../../../../../utilities/scroll_controller.dart';

class Competition extends StatefulWidget {
  const Competition({super.key});

  @override
  State<Competition> createState() => _CompetitionState();
}

class _CompetitionState extends State<Competition> {
  final List<String> imagePaths = [
    'assets/participants/venkat.jpeg',
    "assets/icons/linkdIn.png",
    'assets/icons/pair1.jpg',
    'assets/participants/4.jpg',
    'assets/participants/5.jpg',
    'assets/participants/6.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     GradientText(
          //       'Competition of the Month',
          //       style: TextStyle(
          //           fontSize: 90.w, fontWeight: FontWeight.bold),
          //       gradient: const LinearGradient(
          //           colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
          //     ),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w , top: 10.w),
            child: GradientText(
              'Competition of the Month',
              style: TextStyle(
                  fontSize: 9.w, fontWeight: FontWeight.bold),
              gradient: const LinearGradient(
                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0 , right: 30.0 , bottom: 10.w),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),
              child: Container(
                //height: 250,
                width: 340,
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
                            // height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                imagePaths[2],
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 160 -
                        //       15 -
                        //       8, //minus height of profile ,-8 for padding
                        //   child: InkWell(
                        //     onTap: () {
                        //       _launchUrl(
                        //           'https://www.linkedin.com/in/venkat-guru-prasad/');
                        //     },
                        //     child: CircleAvatar(
                        //       radius: 26,
                        //       backgroundColor:
                        //       const Color.fromRGBO(255, 255, 255, 0.5),
                        //       child: CircleAvatar(
                        //         radius: 22,
                        //         backgroundImage: AssetImage(
                        //           imagePaths[1],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:35.0 , right: 35.0 , bottom: 8.0 ,  top: 0.0),
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
                    // const Padding(
                    //   padding: EdgeInsets.only(left:10.0 , right: 10.0 , bottom: 30.0 ,  top: 0.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         "Venkat Guru Prasad",
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
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