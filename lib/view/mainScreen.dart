import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodui/view/offersection.dart';

import '../contants.dart';
import 'foodsection.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {}, child: const Icon(Icons.menu)),
                      Image.asset(
                        '${kImageUrl}avatar.png',
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
                sizedHeight(20),
                Row(
                  children: [
                    TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: kBlackColor,
                        padding: const EdgeInsets.all(0),
                        indicatorPadding: const EdgeInsets.all(0),
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        indicatorColor: kPrimaryColor,
                        tabs: [
                          Tab(
                            child: Text(
                              'Food',
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Offers',
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ]),
                  ],
                ),
                const Expanded(
                    child: TabBarView(children: [FoodSection(), OfferPage()]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
