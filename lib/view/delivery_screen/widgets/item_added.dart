import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class ItemAdded extends StatelessWidget {
  const ItemAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: ColorConstants.pink,
            title: Row(
              children: [
                Text(
                  "1 item added",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_circle_right,
                  color: ColorConstants.mainWhite,
                )
              ],
            ),
            content: Text(
              "Congratulations! Your delivery is free.",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
            ),
          ),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            "Add item ₹165",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
        height: 60,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.pink),
      ),
    );
  }
}
