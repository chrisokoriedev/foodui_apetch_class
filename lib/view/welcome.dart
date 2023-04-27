import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodui/contants.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final LiquidController liquidController = LiquidController();
  bool isLastPage = false;
  final listOfPages = [
    const NewWidget(
      title: 'Delicious\nfoods',
      bgColor: kPrimaryColor,
      imgUrl: 'welcome.png', textColor: Colors.white,
    ), const NewWidget(
      title: 'Delicious\nfoods',
      bgColor: Color(0xffffd37f),
      imgUrl: 'donut.png', textColor: Colors.black,
    ), const NewWidget(
      title: 'Delicious\nfoods',
      bgColor: Color(0xffffffff),
      imgUrl: 'sushi.png', textColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Builder(
            builder: (context) => LiquidSwipe(
              enableSideReveal: true,
              liquidController: liquidController,
              onPageChangeCallback: ((activePageIndex) => setState(() {
                    isLastPage = activePageIndex == 2;
                  })),
              waveType: WaveType.liquidReveal,
              enableLoop: false,
              slideIconWidget: isLastPage == true
                  ? Container()
                  : const Icon(
                      Icons.arrow_circle_right,
                      color: kWhiteColor,
                    ),
              pages: listOfPages,
            ),
          ),
        ));
  }
}

