import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget{

  const GradientBox(
      {super.key,
        this.width,
        required this.height,
        required this.radius,
        this.child, this.padding, this.alignment,
      });

  final double? width;
  final double height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: const Color.fromARGB(255, 192, 192, 208).withOpacity(0.28),
          border: Border.all(
              width: 1,
              color: const Color.fromARGB(255, 133, 132, 178)
          )
      ),
      child: child,
    );
  }
}