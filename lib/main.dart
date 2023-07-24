import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillmatrix_new_webpage/theme/themes.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Skill Matrix Webpage',
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    theme: getBlackWhiteTheme(),
  ));
}
