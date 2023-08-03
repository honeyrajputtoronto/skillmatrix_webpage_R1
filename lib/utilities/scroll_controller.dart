import 'package:flutter/material.dart';

final itemKey1 = GlobalKey();
final itemKey2 = GlobalKey();
final itemKey3 = GlobalKey();
final itemKey4 = GlobalKey();
final itemKey5 = GlobalKey();

Future scrollToItem(itemKey) async {
  await Scrollable.ensureVisible(itemKey.currentContext!,
      duration: const Duration(seconds: 1));
}