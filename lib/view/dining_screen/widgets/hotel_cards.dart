import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class HotelCards extends StatelessWidget {
  const HotelCards(
      {super.key,
      required this.url,
      required this.name,
      required this.rate,
      required this.place,
      required this.state,
      required this.price,
      required this.km});
  final String url, name, rate, place, state, price, km;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //image container
            height: 350,
            decoration: BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(url)),
                color: ColorConstants.mainBlack,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Positioned(
          top: 30,
          right: 40,
          child: Icon(
            Icons.favorite_outline,
            color: ColorConstants.mainWhite,
            size: 40,
          ),
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Container(
            //container with details of hotel
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text(
                              rate,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: ColorConstants.mainWhite),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: ColorConstants.maingreen,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place,
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.primarygrey),
                    ),
                    Text(
                      km,
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.primarygrey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state,
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.primarygrey),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.primarygrey),
                    )
                  ],
                )
              ],
            ),
            height: 120,
            width: 380,
            decoration: BoxDecoration(
                color: ColorConstants.mainWhite,
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
