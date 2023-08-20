import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../utilities/gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 10, 22, 44),
      child: Column(
        children: [
          SizedBox(
            height: 30.w,
          ),
          Stack(
            clipBehavior: Clip.none,
            children :[
             Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 0.2,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: const Color.fromRGBO(255, 255, 255, 0.2),
              ),
              width: double.infinity,
              // height: 50.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 25.w,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientText(
                              'SKILLMATRIX',
                              style: TextStyle(
                                  fontSize: 5.w, fontWeight: FontWeight.bold),
                              gradient: const LinearGradient(
                                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                            ),
                            SizedBox(
                              height: 1.w,
                            ),
                            Text(
                              'Redefine Learning, Challenge the Status Quo!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 4.w,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            GradientText(
                              'Our Mission',
                              style: TextStyle(
                                  fontSize: 5.w, fontWeight: FontWeight.bold),
                              gradient: const LinearGradient(
                                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                            ),
                            SizedBox(
                              height: 1.w,
                            ),
                            SizedBox(
                              width: 90.w,
                              child: Text(
                                'To empower students with immersive educational gaming,fostering growth through spirited competition,and creating a vibrant community of knowledge enthusiasts.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 4.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            GradientText(
                              'Contact Us',
                              style: TextStyle(
                                  fontSize: 5.w, fontWeight: FontWeight.bold),
                              gradient: const LinearGradient(
                                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                            ),
                            SizedBox(
                              height: 1.w,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 4.w,
                                  width: 4.w,
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
                                    size: 3.w,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  //TODO: ADD MOUSE REGION
                                  onTap: () {
                                    _launchUrl(
                                        'https://www.linkedin.com/company/skillmatrixtech/?viewAsMember=true');
                                  },
                                  child: Text(
                                    'SkillMatrix',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 4.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //const Spacer(),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(217, 217, 217, 0.5),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical :1.w , horizontal: 6.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // scrollToItem(itemKey4);
                              },
                              child: Text(
                                'Code of Conduct',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                // scrollToItem(itemKey4);
                              },
                              child: Text(
                                'Covid-19 Safety',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // scrollToItem(itemKey4);
                              },
                              child: Text(
                                'Travel Guidelines',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                // scrollToItem(itemKey4);
                              },
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 3.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
              Positioned(
                left: 7.w,
                right: 7.w,
                top: -150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlurryContainer.square(
                      child: Container(
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
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal :4.w , vertical : 6.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Subscribe to our mailing list',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 5.w,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 30.w,
                                  width: 300,
                                  child: Form(
                                    // key: controller.formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        TextFormField(
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 4.w,
                                          ),
                                          decoration: InputDecoration(
                                            fillColor: const Color.fromRGBO(
                                                255, 255, 255, 0.2),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(color: Color.fromRGBO(255, 255, 255, 0.2)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(color: Colors.white),
                                            ),
                                            hintText: 'Your Email',
                                            hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 4.w,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Your email';
                                            }
                                            // You can add more complex email validation logic here if needed
                                            return null;
                                          },
                                          onSaved: (value) {
                                            // username = value!;
                                            //   controller.username = value;
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          height: 10.w,
                                          width: Get.width,
                                          decoration: const BoxDecoration(gradient: LinearGradient(
                                            colors: <Color>[Color(0xFFE86E80), Color(0xFFE89C78)],
                                          ),
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                                backgroundColor: Colors.transparent,
                                                shadowColor: Colors.transparent
                                            ),
                                            child: Text('Submit',style: TextStyle(fontSize: 4.w),),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ]
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
