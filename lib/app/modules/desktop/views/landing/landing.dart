import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_text.dart';


class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Container(
              width: 34.w,
              margin: EdgeInsets.symmetric(horizontal: 2.w),
             
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  
            
                  style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 6.9.sp,
                  color: Colors.white,
                  height: 1.6),     
            
            
                  children:  [
                       WidgetSpan(
                        child: GradientText(
                          'SKillMatrix ',
                          gradient: const LinearGradient(
                            colors: [Color.fromARGB(255, 232, 110, 128),
                  Color.fromARGB(255, 232, 156, 120),],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          style: TextStyle(
                            fontSize: 9.7.sp,
                            fontWeight: FontWeight.bold,
                            height: 1.16
                          ),
                        ),
                      ),
            
            
            
                    const TextSpan(text: 'is the Canadas, ',                
                     ),
            
                     WidgetSpan(
                        child: GradientText(
                          'only Knock- out Series ',
                          gradient: const LinearGradient(
                            colors: [Color.fromARGB(255, 232, 110, 128),
                  Color.fromARGB(255, 232, 156, 120),],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                           style: TextStyle(
                            fontSize: 6.9.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.6
                          ),
                        ),
                      ),
            
            
            
                    const TextSpan(text: 'where students ',                
                     ),
                      WidgetSpan(
                        child: GradientText(
                          ' Battle ',
                          gradient: const LinearGradient(
                            colors: [Color.fromARGB(255, 232, 110, 128),
                  Color.fromARGB(255, 232, 156, 120),],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                           style: TextStyle(
                            fontSize: 6.9.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.6
                          ),
                        ),
                      ),
            
            
            
                    const TextSpan(text: 'to showcase ',                
                     ),
                      WidgetSpan(
                        child: GradientText(
                          'their skills ',
                          gradient: const LinearGradient(
                            colors: [Color.fromARGB(255, 232, 110, 128),
                  Color.fromARGB(255, 232, 156, 120),],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                           style: TextStyle(
                            fontSize: 6.9.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.6
                          ),
                        ),
                      ),
            
            
            
                 ],         
                ),
              
              ),
            ),
           
           SizedBox(
            height: 9.h,
           ),
      
          GradientBox(
            width: 100.w, 
            height: 20.h, 
            radius: 25,
            child: Row(
              children: [
                Expanded(
                  flex: 59,
                  
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                                  
                                  
                    Container(
                    height: 2.8.w,
                    width: 15.0.w,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFE86E80), 
                        Color(0xFFE89C78),
                        ],
                    ),
                    shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      child: Text('Join us now',style: TextStyle(fontSize: 4.sp),),
                    ),
                            ),
                                  
                                  
                                  
                    Container(
                    height: 2.8.w,
                    width: 15.0.w,
                    decoration:  BoxDecoration(
                      
                    border: Border.all(
                      color: Color(0xFFE86E80),
                      width: 2

                    ),
                    shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      child: Text('Get Registered',style: TextStyle(fontSize: 4.sp),),
                    ),
                            )
                      ],
                    ),
                  
                ),


               const Expanded(
                  flex:41,
                  child: SizedBox()
                )
              
              
              ],
            ),
            )
          
          ],
        ),
        
        Align(
          alignment: Alignment.centerRight,
          child: FractionallySizedBox(
            widthFactor: 0.41,

            child: Container(
             
              height: 63.h,
              color: Color.fromARGB(255, 86, 179, 233).withOpacity(0.26),
            ),
          ),
        )
        
        ]
      ),
    );
  }
}