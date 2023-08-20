import 'package:flutter/material.dart';

class GradientCircle extends StatelessWidget{

const GradientCircle(
      {super.key,
       required this.width,
       required this.height,
         
             
      });

   final double width;
  final double height;
 
  

   @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
     
      
      decoration: BoxDecoration(
      shape:BoxShape.circle,
        color: const Color.fromARGB(255, 192, 192, 208).withOpacity(0.28),
        border: Border.all(
        width: 1,
        color: const Color.fromARGB(255, 133, 132, 178)
        )
      ),
      
    );
  }
}