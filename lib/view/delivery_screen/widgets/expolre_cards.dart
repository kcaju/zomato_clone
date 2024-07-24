import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class ExpolreCards extends StatelessWidget {
  const ExpolreCards({
    super.key,
    required this.url,
    required this.text1,
    required this.text2,
  });
  final String url, text1, text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            url,
            height: 100,
          ),
          Text(
            text1,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            text2,
            style: TextStyle(color: ColorConstants.mainBlack, fontSize: 15),
          ),
        ],
      ),
      height: 170,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: Offset(8, 5),
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.3))
          ],
          color: ColorConstants.mainWhite),
    );
  }
}
