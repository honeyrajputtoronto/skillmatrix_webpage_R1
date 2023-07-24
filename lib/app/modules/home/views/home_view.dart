import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../responsive/responsive_layout.dart';
import '../../desktop/views/desktop_body.dart';
import '../../mobile/views/mobile_body.dart';
import '../controllers/home_controller.dart';



class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ResponsiveLayout(
          mobileBody: MobileBody(),
          desktopBody: DesktopBody(),
        ),
      ),
    );
  }


}