import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';

final itemKey1 = GlobalKey();
final itemKey2 = GlobalKey();
final itemKey3 = GlobalKey();
final itemKey4 = GlobalKey();
final itemKey5 = GlobalKey();
final itemKey6 = GlobalKey();
final itemKey7 = GlobalKey();
final itemKey8 = GlobalKey();
final itemKey9 = GlobalKey();
final itemKey10 = GlobalKey();
final GlobalKey<SliderDrawerState> drawerKey = GlobalKey<SliderDrawerState>();
double headerSize = 0.0;

Future scrollToItem(itemKey) async {
  await Scrollable.ensureVisible(itemKey.currentContext!,
      duration: const Duration(seconds: 1));
}