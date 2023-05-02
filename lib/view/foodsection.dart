import 'package:flutter/material.dart';
import 'package:foodui/contants.dart';

class FoodSection extends StatelessWidget {
  const FoodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          sizedHeight(40),
          TextFormField(
            decoration: InputDecoration(
                isCollapsed: true,
                fillColor: kGreyColor,
                hintText: 'Search',
                filled: true,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
