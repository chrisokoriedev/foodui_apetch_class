import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodui/contants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: yellowColor,
                      child: Image.asset('${kImageUrl}avatar.png'))
                ],
              ),
              sizedHeight(50),
              Text(
                'Top of',
                style: headingStyle(),
              ),
              Row(
                children: [
                  Text(
                    'the day',
                    style: headingStyle(),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    '${kImageUrl}burger.png',
                    width: 50.w,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle headingStyle() => TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w600,
    wordSpacing: 1.5,
    letterSpacing: 1.5);
