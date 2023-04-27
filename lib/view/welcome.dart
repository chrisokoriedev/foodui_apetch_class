import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodui/contants.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        '${kImageUrl}welcome.png',
                        height: 400.h,
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          'Delicious \nfoods.',
                          style: TextStyle(
                              fontSize: 58.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0,
                              color: kWhiteColor),
                        ),
                        sizedHeight(11),
                         Text(
                          'Let us help you discover the \nbest food of the week.',
                          style: TextStyle(
                              fontSize: 14.sp,
                              height: 1.6,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.5,
                              color: kWhiteColor),
                        ),
                        sizedHeight(20),
                        ElevatedButton(
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                   Size(170.w, 60.h)),
                              backgroundColor:
                              MaterialStateProperty.all(kButtonColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: kBorderRadius))),
                          onPressed: () {},
                          child: Text('Get Started',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}