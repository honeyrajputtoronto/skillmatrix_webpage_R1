import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget{

const GradientBox(
      {super.key,
        this.width,
       required this.height,
        required this.radius,   
        this.child,      
      });

   final double? width;
  final double height;
  final double radius;
  final Widget? child;

   @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      
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