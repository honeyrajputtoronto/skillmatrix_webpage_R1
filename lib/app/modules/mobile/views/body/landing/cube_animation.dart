import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../utilities/gradient_text.dart';

class CubeAnimation extends StatefulWidget {
  const CubeAnimation({super.key});


  @override
  _CubeAnimationState createState() => _CubeAnimationState();
}

class _CubeAnimationState extends State<CubeAnimation> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<Widget> faces = [
    Container(
      alignment: Alignment.center,
      //color: colors[index],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              GradientText(
                'ELIMINATION ROUNDS',
                style: TextStyle(
                    fontSize: 9.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'Compete ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'one-to-one ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              GradientText(
                'to ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),

              ),
              Text(
                  'win ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'matches',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),

              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'and ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'rise ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              Text(
                  'through the ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'levels',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      alignment: Alignment.center,
      // color: colors[index],
      child: Column(
        children: [
          Row(
            children: [
              GradientText(
                'INSTANT MATCHING',
                style: TextStyle(
                    fontSize: 9.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              GradientText(
                'Match ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              Text(
                  'with the ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'best Opponent',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'based on your ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'Preparation',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      alignment: Alignment.center,
      // color: colors[index],
      child: Column(
        children: [
          Row(
            children: [
              GradientText(
                'CURATED QUESTIONS',
                style: TextStyle(
                    fontSize: 9.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'Attempt ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'five questions ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              Text(
                  'that are',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              GradientText(
                'Carefully ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              Text(
                  'picked from the ' ,
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'Topics',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'you\'ve ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'learnt',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      alignment: Alignment.center,
      // color: colors[index],
      child: Column(
        children: [
          Row(
            children: [
              GradientText(
                'INTENSE BATTLES',
                style: TextStyle(
                    fontSize: 9.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [

              GradientText(
                'Quickest ',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
              Text(
                  'to answer the ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'Questions',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text(
                  'correctly wins the ',
                  style: TextStyle(
                      fontSize: 6.w, fontWeight: FontWeight.bold , color: Colors.white)
              ),
              GradientText(
                'Match',
                style: TextStyle(
                    fontSize: 6.w, fontWeight: FontWeight.bold),
                gradient: const LinearGradient(
                    colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
              ),
            ],
          ),
        ],
      ),
    ),

  ];

  late CarouselSliderController _sliderController = _sliderController.setAutoSliderEnabled(true);

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: Get.height * 0.33,
          width: Get.width,
          child: CarouselSlider.builder(
            scrollDirection: Axis.vertical,
            unlimitedMode: true,
            controller: _sliderController,
            slideBuilder: (index) {
              return Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    faces[index],
                  ],
                ),
              );
            },
            slideTransform: const CubeTransform(),
            itemCount: faces.length,
            initialPage: 0,
            enableAutoSlider: true,
          ),
        ),
      ],
    );
  }
}