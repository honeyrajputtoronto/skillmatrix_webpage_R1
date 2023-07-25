import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'footer/footer.dart';
import 'header/header.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Header(),
        Footer(),
      ],
    );
  }
}



