import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skillmatrix_new_webpage/app/modules/mobile/views/body/download_app/slantlinepainter.dart';
import 'package:skillmatrix_new_webpage/app/modules/mobile/views/body/download_app/launching_soon.dart';
import 'dart:async';

class AppDownload extends StatefulWidget {
  const AppDownload({Key? key}) : super(key: key);

  @override
  _AppDownloadState createState() => _AppDownloadState();
}

class _AppDownloadState extends State<AppDownload> {
  bool isDownloadButtonClicked = false;

  void _onDownloadButtonClicked() {
    setState(() {
      isDownloadButtonClicked = true;
      // Start the timer when the button is clicked
      Timer(const Duration(seconds: 5), () {
        setState(() {
          // After 5 seconds, set the isDownloadButtonClicked back to false
          isDownloadButtonClicked = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isDownloadButtonClicked) {
      return 
        const LaunchingSoon();
    } else {
      return Padding(
        padding: EdgeInsets.only(left: 4.w,right :4.w,top: 10.w),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientBox(
                height: 10.w, //7.6.h,
                width: 40.w, //12.w
                radius: 5,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                   onPressed: _onDownloadButtonClicked,
                  style: ElevatedButton.styleFrom(                       
                        backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      SvgPicture.asset(
                        "assets/icons/download_app/apple.svg",
                        height: 5.h,
                        width: 5.w,
                      ),
                       Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                            Text(
                            "Download on the",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 8.sp,
                                color: const Color.fromARGB(224, 251, 251, 252),
                                height: 1.21),
                          ),

                           Text(
                            "Apple Store",
                             textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 6.sp,
                                color: Colors.white,
                                height: 1.21),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),




              SizedBox(width: 2.w),
              CustomPaint(
                size: Size(2.5.w, 9.w),
                painter: SlantLinePainter(),
              ),
              SizedBox(width: 2.w),




              GradientBox(
                height: 10.w, //7.6.h,
                width: 40.w,
                radius: 5,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: _onDownloadButtonClicked,
                  style: ElevatedButton.styleFrom(                       
                        backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/download_app/playstore.svg",
                        height: 5.h,
                        width: 5.w,
                      ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,

                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                            "Download on the",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 8.sp,
                                color: Color.fromARGB(224, 251, 251, 252),
                                height: 1.21),
                          ),

                          Text(
                            "Google Play",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 6.sp,
                                color: Colors.white,
                                height: 1.21),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
