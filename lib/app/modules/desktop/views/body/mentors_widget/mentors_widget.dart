import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import '../../../../../../utilities/gradient_text.dart';

class MentorsWidget extends StatefulWidget {
  const MentorsWidget({super.key});

  @override
  State<MentorsWidget> createState() => _MentorsWidgetState();
}

class _MentorsWidgetState extends State<MentorsWidget> {

  final List<String> imagePaths = [
    'assets/participants/1.jpg',
    'assets/participants/2.jpg',
    'assets/participants/3.jpg',
    'assets/participants/4.jpg',
    'assets/participants/5.jpg',
    'assets/participants/6.jpg',
    'assets/mentors/9.jpg',
    // Add more image paths here
  ];
  final List<String> names = [
    'Joelle Fleming',
    'Fernando Davenport',
    'Apollo Maynard',
    'Adrianna Trujillo',
    'Braylon Bruce',
    'Carolyn Yates',
    'Faraz Javaheri',
    // Add more names here
  ];
  final List<String> designation = [
    'Software Developer',
    'Technical Team lead',
    'Backend Developer',
    'Software Consultant',
    'Software Developer',
    'Database Administrator',
    'Business Developer',
    // Add more names here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(
                'Unlock Mentorship',
                style: TextStyle(
                    fontSize: 8.sp, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                FontAwesomeIcons.lock,
                color: Colors.grey,
                size: 7.sp,
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: FanCarouselImageSlider(
                      imagesLink: [imagePaths[0], imagePaths[1], imagePaths[2], imagePaths[3], imagePaths[4], imagePaths[5] ,imagePaths[6]],
                      sliderHeight: 20.w,
                      sliderWidth: 20.w,
                      expandImageHeight: 30.w,
                      expandImageWidth: 30.w,
                      imageRadius: 10,
                      isAssets: true,
                      autoPlay: true,
                    ),
                  ),
              ),
             Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: SizedBox(
                      height: 300,
                      // width: 300,
                      child: ScrollLoopAutoScroll(
                        enableScrollInput: false,
                        duration: const Duration(seconds: 300),
                        gap: 0,
                        scrollDirection: Axis.vertical,
                      child: Column(
                         children: [
                           for(int i = 0; i < 7; i++)
                             makePhotoCard(i , names[i] , designation[i] ),
                         ],
                      ),

                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget makePhotoCard(int index , String name ,String designation) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0.2,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: const Color.fromRGBO(255, 255, 255, 0.2),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            imagePaths[index],
            fit: BoxFit.cover,
          ),
        ),
        trailing: GestureDetector(
          //TODO: ADD MOUSE REGION
          onTap: () {
            _launchUrl(
                'https://www.linkedin.com/in/faraz-javaheri/');
          },
          child: Container(
            height: 2.w,
            width: 2.w,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFFE86E80),
                  Color(0xFFE89C78)
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              FontAwesomeIcons.linkedinIn,
              color: Colors.white,
              size: 1.w,
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          designation,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      )
    );
  }
}

Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

