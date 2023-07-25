import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillmatrix_new_webpage/theme/themes.dart';
import 'app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(
    builder : (context, orientation, deviceType) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Skill Matrix",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: getBlackWhiteTheme(),
    ),
  ));
}
