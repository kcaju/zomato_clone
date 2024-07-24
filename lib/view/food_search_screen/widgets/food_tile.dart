import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.url, required this.name});
  final String url, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Image.asset(url),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
