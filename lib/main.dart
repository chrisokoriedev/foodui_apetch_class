import 'package:flutter/material.dart';
import 'package:foodui/contants.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}

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
                        height: MediaQuery.of(context).size.height*0.4,
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Delicious \nfoods.',
                          style: TextStyle(
                              fontSize: 58,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0,
                              color: kWhiteColor),
                        ),
                        sizedHeight(11),
                        const Text(
                          'Let us help you discover the \nbest food of the week.',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.6,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.5,
                              color: kWhiteColor),
                        ),
                        sizedHeight(20),
                        ElevatedButton(
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(170, 60)),
                              backgroundColor:
                                  MaterialStateProperty.all(kButtonColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: kBorderRadius))),
                          onPressed: () {},
                          child: Text('Get Started'),
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
