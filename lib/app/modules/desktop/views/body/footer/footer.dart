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
    return Column(
      children: [
        // Container(
        //   height: 50.h,
        //   width: double.infinity,
        //   color: Colors.deepPurple,
        // ),
        // Container(
        //   height: 50.h,
        //   width: double.infinity,
        //   color: Colors.green,
        // ),
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
              Padding(
                padding: EdgeInsets.all(5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientText(
                          'SKILL MATRIX',
                          style: TextStyle(
                              fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Redefine Learning, Challenge the Status Quo!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        GradientText(
                          'About Us',
                          style: TextStyle(
                              fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Redefine Learning, Challenge the Status Quo!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Redefine Learning, Challenge the Status Quo!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        GradientText(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Container(
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
                            SizedBox(
                              width: 0.5.w,
                            ),
                            GestureDetector(
                              //TODO: ADD MOUSE REGION
                              onTap: () {
                                _launchUrl(
                                    'https://www.linkedin.com/company/skillmatrixtech/?viewAsMember=true');
                              },
                              child: Text(
                                'SkillMatrix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 4.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
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
                          padding: EdgeInsets.all(4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Subscribe to our mailing list',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                height: 14.h,
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
                                          fontSize: 2.h,
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
                                              fontSize: 2.h,
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
                                      const SizedBox(height: 16),
                                      Container(
                                        height: 5.h,
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
                                          child: Text('Submit',style: TextStyle(fontSize: 4.sp),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // scrollToItem(itemKey4);
                      },
                      child: Text(
                        'Code of Conduct',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        // scrollToItem(itemKey4);
                      },
                      child: Text(
                        'Covid-19 Safety',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        // scrollToItem(itemKey4);
                      },
                      child: Text(
                        'Travel Guidelines',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        // scrollToItem(itemKey4);
                      },
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
