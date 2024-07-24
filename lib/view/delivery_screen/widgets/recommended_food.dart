import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/item_added.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood(
      {super.key,
      required this.name,
      required this.rating,
      required this.url,
      required this.details});
  final String name, rating, url, details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: ColorConstants.brown,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Bestseller",
                          style: TextStyle(
                              fontSize: 10, color: ColorConstants.mainWhite),
                        ),
                      ),
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorConstants.gold.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                Text(
                  name,
                  style:
                      TextStyle(fontSize: 18, color: ColorConstants.mainBlack),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: ColorConstants.gold,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: ColorConstants.gold,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: ColorConstants.gold,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: ColorConstants.gold,
                          ),
                          Icon(
                            Icons.star_half_sharp,
                            size: 20,
                            color: ColorConstants.gold,
                          ),
                        ],
                      ),
                      height: 20,
                      width: 110,
                      color: ColorConstants.gold.withOpacity(0.3),
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.mainBlack),
                    )
                  ],
                ),
                Text(
                  "₹165",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainBlack),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  details,
                  style: TextStyle(color: ColorConstants.primarygrey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(url)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 35,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              color: ColorConstants.lightblue,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image:
                                                          NetworkImage(url))),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  size: 30,
                                                  color: ColorConstants.brown,
                                                ),
                                                Container(
                                                  child: Center(
                                                    child: Text(
                                                      "Bestseller",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConstants
                                                              .mainWhite),
                                                    ),
                                                  ),
                                                  height: 25,
                                                  width: 60,
                                                  decoration: BoxDecoration(
                                                      color: ColorConstants.gold
                                                          .withOpacity(0.9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  name,
                                                  style: TextStyle(
                                                      color: ColorConstants
                                                          .mainBlack,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Spacer(),
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.favorite_outline,
                                                    color: ColorConstants.pink,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: ColorConstants
                                                              .mainGrey)),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.ios_share_outlined,
                                                    color: ColorConstants.pink,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: ColorConstants
                                                              .mainGrey)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 20,
                                                        color:
                                                            ColorConstants.gold,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        size: 20,
                                                        color:
                                                            ColorConstants.gold,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        size: 20,
                                                        color:
                                                            ColorConstants.gold,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        size: 20,
                                                        color:
                                                            ColorConstants.gold,
                                                      ),
                                                      Icon(
                                                        Icons.star_half_sharp,
                                                        size: 20,
                                                        color:
                                                            ColorConstants.gold,
                                                      ),
                                                    ],
                                                  ),
                                                  height: 20,
                                                  width: 110,
                                                  color: ColorConstants.gold
                                                      .withOpacity(0.3),
                                                ),
                                                Text(
                                                  rating,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: ColorConstants
                                                          .mainBlack),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              details,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: ColorConstants
                                                      .primarygrey),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorConstants.mainWhite),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 12),
                                    height: 80,
                                    color: ColorConstants.mainWhite,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.remove,
                                                color: ColorConstants.pink,
                                              ),
                                              Text(
                                                "1",
                                                style: TextStyle(
                                                    color: ColorConstants
                                                        .mainBlack,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: ColorConstants.pink,
                                              ),
                                            ],
                                          ),
                                          height: 60,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: ColorConstants.peach
                                                  .withOpacity(0.2),
                                              border: Border.all(
                                                  color: ColorConstants.pink)),
                                        ),
                                        ItemAdded()
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                  color: ColorConstants.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorConstants.pink),
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstants.peach.withOpacity(0.7)),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      right: 40,
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.pink,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
