import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../utilities/gradient_text.dart';

class Tournaments extends StatelessWidget {
  const Tournaments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore Our New ',
              style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            GradientText(
              'Tournaments',
              style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold),
              gradient: const LinearGradient(
                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 3.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children :[
                Image.asset(
                  'assets/images/head-to-head.png',
                  height: 60.h,
                  width: 60.w,
                ),
                SizedBox(width: 3.w),
                Container(
                  width: 30.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children :[
                        GradientText(
                          'Single-Elimination Tournament',
                          style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'A single-elimination, knockout, or sudden-death tournament is a type of elimination tournament where the loser of each match-up is immediately eliminated from the tournament. Each winner will play another in the next round, until the final match-up, whose winner becomes the tournament champion.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),

              ]
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 80.w,
          decoration : BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 3.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children :[
                Container(
                  width: 30.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children :[
                        GradientText(
                          'Team-Elimination Tournament',
                          style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'A Team-elimination is a type of elimination tournament where the team who loses the match is immediately eliminated from the tournament. Each winner team will play another in the next round, until the final match-up, whose winner becomes the tournament champion.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  'assets/images/teamelimination.png',
                  height: 60.h,
                  width: 60.w,
                ),

              ]
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 80.w,
          decoration : BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 3.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children :[
                Image.asset(
                  'assets/images/round robin.png',
                  height: 60.h,
                  width: 60.w,
                ),
                SizedBox(width: 3.w),
                Container(
                  width: 30.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children :[
                        GradientText(
                          'Round-Robin Tournament',
                          style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'A round-robin tournament (or all-go-away-tournament) is a competition in which each contestant meets every other participant, usually in turn. A round-robin contrasts with an elimination tournament, in which participants/teams are eliminated after a certain number of losses.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),

              ]
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 80.w,
          decoration : BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 3.w),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children :[
                Container(
                  width: 30.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children :[
                        GradientText(
                          'Swiss Tournament',
                          style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'A Swiss-system tournament is a non-eliminating tournament that features a fixed number of rounds of competition; thus each competitor (team or individual) does not play all the other competitors. Competitors meet one-on-one in each round and are paired using a set of rules designed to ensure that each competitor plays opponents with a similar running score, but does not play the same opponent more than once.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white),
                        ),
                      ]
                  ),
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  'assets/images/swiss format.png',
                  height: 60.h,
                  width: 60.w,
                ),

              ]
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 80.w,
          decoration : BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          decoration : BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[400],
          ),
          height: 25.h,
          width: 85.w,
          child : Padding(
            padding: EdgeInsets.symmetric(horizontal : 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : [
                Image.asset(
                  'assets/images/school.png',
                  width: 15.w,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children :[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Interested in a Campus wide license?',
                            style: TextStyle(
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Get in touch with us to find out more about SkillMatrix.',
                            style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),),
                            child : Padding(
                              padding: EdgeInsets.symmetric(horizontal : 2.w , vertical : 2.h),
                              child: Text(
                                'Get in Touch',
                                style: TextStyle(
                                  fontSize: 3.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                              ),
                            )

                        ),
                      )
                    ]
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
