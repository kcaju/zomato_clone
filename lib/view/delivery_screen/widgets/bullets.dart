import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class Bullets extends StatelessWidget {
  const Bullets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ColorConstants.mainBlack),
      ),
    );
  }
}
