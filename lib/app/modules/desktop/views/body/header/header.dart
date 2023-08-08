import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';
import 'package:sizer/sizer.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../utilities/scroll_controller.dart';


class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return MeasuredSize(
      onChange: (Size size) { headerSize = size.height;
        },
      child: Container(
        color: const Color.fromRGBO(10, 22, 44, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.h),
          child: Row(
           // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 3.w,
                ),
              ),
              const SizedBox(
                width: 10,
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
                            'Our Winners',
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
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        scrollToItem(itemKey4);
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
                            'FAQS',
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
              const Spacer(),
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
                    _launchUrl(
                        'https://skillmatrix-application.web.app/');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent
                  ),
                  child: Text('JOIN NOW',style: TextStyle(fontSize: 4.sp),),
                ),
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}
Future<void> _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
