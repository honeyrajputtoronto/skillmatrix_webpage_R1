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
        height: 100.h,
        width: 50.w,
        color: const Color.fromRGBO(10, 22, 44, 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    shadowColor: Colors.transparent
                ),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 5.w,
                )
              ),
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 5.w,
                ),
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
