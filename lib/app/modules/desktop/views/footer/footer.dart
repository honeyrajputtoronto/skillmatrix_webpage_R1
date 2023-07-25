import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../utilities/gradient_text.dart';

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
              width: 1,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: const Color.fromRGBO(255, 255, 255, 0.2),
          ),
          width: double.infinity,
          height: 50.h,
          child: Column (
            children: [
              Padding(
                padding: EdgeInsets.all(5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'SKILL MATRIX',
                    style: TextStyle(fontSize: 5.h , fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                  ),
                  Text(
                    'Redefine Learning, Challenge the Status Quo!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  GradientText(
                    'About Us',
                    style: TextStyle(fontSize: 5.h , fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                  ),
                  Text(
                    'Redefine Learning, Challenge the Status Quo!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Redefine Learning, Challenge the Status Quo!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 2.h,),
                  GradientText(
                    'Contact Us',
                    style: TextStyle(fontSize: 5.h , fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 2.w,
                        width: 2.w,
                        decoration: const BoxDecoration(gradient: LinearGradient(
                          colors: <Color>[Color(0xFFE86E80), Color(0xFFE89C78)],
                        ),
                            shape: BoxShape.circle,
                        ),
                        child: Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                          size: 1.w,
                        ),
                      ),
                      Text(
                        'Redefine Learning, Challenge the Status Quo!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 2.5.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
          ),
                  const Spacer(),
                  Container(
                      height: 20.h,
                      width: 20.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color: const Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            '© 2021',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                      ),
                  ],
                ),
              ),
              Row(),
            ],
          ),
        ),
      ],
    );
  }
}
