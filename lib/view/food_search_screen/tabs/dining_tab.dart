import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';

class DiningTab extends StatelessWidget {
  const DiningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(ImageConstants.MAPS))),
          height: 60,
          child: Row(
            children: [
              Icon(
                Icons.my_location_outlined,
                color: ColorConstants.pink,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Restaurants near me",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Container(
                child: Center(
                  child: Text(
                    "View",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.pink,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
