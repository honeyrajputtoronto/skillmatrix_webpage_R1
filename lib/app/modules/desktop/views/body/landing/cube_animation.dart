import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

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
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  bool _isPlaying = true;

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
        Container(
          height: 500,
          child: CarouselSlider.builder(
            unlimitedMode: true,
            controller: _sliderController,
            slideBuilder: (index) {
              return Container(
                alignment: Alignment.center,
                color: colors[index],
                child: Text(
                  letters[index],
                  style: TextStyle(fontSize: 200, color: Colors.white),
                ),
              );
            },
            slideTransform: CubeTransform(),
            slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 32),
              indicatorBorderColor: Colors.black,
            ),
            itemCount: colors.length,
            initialPage: 0,
            enableAutoSlider: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Align(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 240, maxWidth: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 48,
                    icon: const Icon(Icons.skip_previous),
                    onPressed: () {
                      _sliderController.previousPage();
                    },
                  ),
                  IconButton(
                    iconSize: 64,
                    icon: Icon(
                      _isPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
                    ),
                    onPressed: () {
                      setState(
                            () {
                          _isPlaying = !_isPlaying;
                          _sliderController.setAutoSliderEnabled(_isPlaying);
                        },
                      );
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: const Icon(Icons.skip_next),
                    onPressed: () {
                      _sliderController.nextPage();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}