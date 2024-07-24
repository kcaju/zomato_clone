import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class Times extends StatelessWidget {
  const Times({super.key, required this.time, required this.offer});
  final String time, offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 18, color: ColorConstants.mainBlack),
          ),
          Text(
            offer,
            style: TextStyle(fontSize: 16, color: ColorConstants.blue),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: ColorConstants.mainWhite,
          border: Border.all(color: ColorConstants.mainGrey),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
