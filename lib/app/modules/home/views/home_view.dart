import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';
import '../../../responsive/responsive_layout.dart';
import '../../desktop/views/body/header/header.dart';
import '../../desktop/views/desktop_body.dart';
import '../../mobile/views/mobile_body.dart';
import '../controllers/home_controller.dart';



class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 22, 44),
        body: SingleChildScrollView(
          child: ResponsiveLayout(
            mobileBody: MobileBody(),
            desktopBody: const DesktopBody(),
            tabletBody: const DesktopBody(),  //TODO: Add tablet body
          ),
        ),
      ),
    );
  }
//#0A162C

}


// backgroundColor: const Color.fromARGB(255, 10, 22, 44),