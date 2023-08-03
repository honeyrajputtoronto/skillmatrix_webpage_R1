import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hovering/hovering.dart';

import '../../../../../../utilities/scroll_controller.dart';


class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/images/logo.png',
              height: 3.w,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    scrollToItem(itemKey1);
                  },
                  child: HoverContainer(
                    hoverDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide( //                   <--- left side
                          color: Color(0xFFE86E80),
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'About',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 4.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    scrollToItem(itemKey2);
                  },
                  child: HoverContainer(
                    hoverDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide( //                   <--- left side
                          color: Color(0xFFE86E80),
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Our Participants',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 4.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    scrollToItem(itemKey3);
                  },
                  child:HoverContainer(
                    hoverDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide( //                   <--- left side
                          color: Color(0xFFE86E80),
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Mentors',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 4.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 3.w,
            width: 10.0.w,
            decoration: const BoxDecoration(gradient: LinearGradient(
              colors: <Color>[Color(0xFFE86E80), Color(0xFFE89C78)],
            ),
            shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            child: ElevatedButton(
              onPressed: () {
                scrollToItem(itemKey4);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
              ),
              child: Text('FAQS',style: TextStyle(fontSize: 4.sp),),
            ),
          )
        ],
      ),
    ) ;
  }
}
