import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class HotelsTille extends StatelessWidget {
  const HotelsTille(
      {super.key,
      required this.url,
      required this.name,
      required this.rate,
      required this.time,
      required this.place});
  final String url, name, rate, time, place;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(url))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: ColorConstants.mainBlack),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                            )
                          ],
                        ),
                        Text(
                          place,
                          style: TextStyle(
                              color: ColorConstants.mainBlack.withOpacity(0.7),
                              fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 90,
                child: Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: ColorConstants.mainBlack,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.mainBlack),
                        )
                      ],
                    ),
                  ),
                  height: 30,
                  width: 170,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(90, 50))),
                ),
              )
            ],
          ),
          height: 320,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(6, 10),
                    blurRadius: 10,
                    color: ColorConstants.mainBlack.withOpacity(0.5))
              ],
              color: ColorConstants.mainWhite,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          top: 15,
          right: 10,
          child: Row(
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: ColorConstants.mainWhite,
                size: 40,
              ),
              Icon(
                Icons.visibility_off_outlined,
                color: ColorConstants.mainWhite,
                size: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}
