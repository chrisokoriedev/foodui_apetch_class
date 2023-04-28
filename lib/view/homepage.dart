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
              ),
              sizedHeight(40),
              Container(
                width: double.infinity,
                height: 260.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30).w,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffece1ff),
                        offset: Offset(0,8),
                        blurRadius: 5.0,
                        spreadRadius: 3
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: const [0.2, 0.9],
                      colors: [
                        kPrimaryColor.withOpacity(0.9),
                        const Color(0xffd6c4f4),
                      ],
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                                fontSize: 20.sp,
                                height: 2.0.sp,
                                color: const Color(0xffe1d3ef)),
                          ),
                          Text(
                            'Best lunch\nof the day',
                            style: TextStyle(
                                fontSize: 30.sp,
                                color: const Color(0xfffffefd),
                                fontWeight: FontWeight.w500),
                          ),
                          sizedHeight(20),
                          const Icon(Icons.arrow_right_alt,color: Colors.white,)
                        ],
                      ),
                    ],
                  ),
                ),
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
