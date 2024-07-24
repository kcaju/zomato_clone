import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/bullets.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/expansion_tile_widget.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/menu_tab.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/popup_menu.dart';

class FoodOrderingScreen extends StatelessWidget {
  const FoodOrderingScreen(
      {super.key,
      required this.name,
      required this.place,
      required this.rating,
      required this.time,
      required this.rate});
  final String name, place, rating, time, rate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: ColorConstants.mainWhite,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: ColorConstants.mainBlack,
          ),
        ),
        actions: [
          Icon(
            Icons.favorite_outline,
            color: ColorConstants.mainBlack,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.ios_share_outlined,
            color: ColorConstants.mainBlack,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.more_vert,
            color: ColorConstants.mainBlack,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _hotelDetails(),
                  //expasiontile
                  ExpansionTileWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  MenuTab(menu: DummyDb.menu),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(
                      DummyDb.info.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Bullets(),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                DummyDb.info[index],
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Report an issue with the menu",
                        style:
                            TextStyle(color: ColorConstants.pink, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: ColorConstants.pink,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          _bottomTab()
        ],
      ),
    );
  }

  Container _bottomTab() {
    return Container(
      color: ColorConstants.mainWhite,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    size: 30,
                    color: ColorConstants.pink,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style:
                        TextStyle(color: ColorConstants.mainGrey, fontSize: 20),
                  )
                ],
              ),
              height: 60,
              decoration: BoxDecoration(
                  color: ColorConstants.mainGrey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: ColorConstants.mainGrey)),
            ),
          ),
          //popupmenu
          PopupMenu(
            menuList: [
              PopupMenuItem(
                  child: ListTile(
                title: Text(
                  "Recommended for you",
                  style: TextStyle(
                      color: ColorConstants.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "18",
                  style: TextStyle(
                      color: ColorConstants.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
              PopupMenuItem(
                  child: ListTile(
                title: Text(
                  "Cool Drinks",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "4",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
              )),
              PopupMenuItem(
                  child: ListTile(
                title: Text(
                  "Main Course",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "8",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
              )),
              PopupMenuItem(
                  child: ListTile(
                title: Text(
                  "South Indian",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "10",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
              )),
              PopupMenuItem(
                  child: ListTile(
                title: Text(
                  "Chinese",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  "12",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 18,
                  ),
                ),
              )),
            ],
            icon: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant,
                    size: 30,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  )
                ],
              ),
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                  color: ColorConstants.mainBlack,
                  borderRadius: BorderRadius.circular(15)),
            ),
          )
        ],
      ),
    );
  }

  Container _hotelDetails() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: ColorConstants.mainWhite,
      height: 440,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star_half_sharp,
                color: ColorConstants.brown,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "RESTAURANT AWARDS 2024 NOMINEE",
                style: TextStyle(color: ColorConstants.brown, fontSize: 16),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.brown,
                size: 12,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
          Text(
            place,
            style: TextStyle(color: ColorConstants.mainGrey, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        rating,
                        style: TextStyle(
                            fontSize: 16, color: ColorConstants.mainWhite),
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.maingreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                rate,
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.mainBlack,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationStyle: TextDecorationStyle.dotted),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Text(
                "for orders under 4 km",
                style: TextStyle(fontSize: 15, color: ColorConstants.mainBlack),
              ),
            ),
            height: 30,
            width: 200,
            decoration: BoxDecoration(
                color: ColorConstants.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorConstants.green)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.timer_outlined,
                  size: 20,
                  color: ColorConstants.mainBlack,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 10,
                  width: 2,
                  color: ColorConstants.mainGrey.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Kakkanad",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            height: 30,
            width: 250,
            decoration: BoxDecoration(
              color: ColorConstants.mainGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.electric_moped,
                  color: ColorConstants.mainRed,
                  size: 35,
                ),
                Text(
                  "Free Delivery",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "exclusively for you",
                  style: TextStyle(
                      color: ColorConstants.mainGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorConstants.mainblue.withOpacity(0.2),
                      ColorConstants.mainWhite.withOpacity(0.1),
                    ])),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.tune,
                        color: ColorConstants.mainBlack,
                      ),
                      Text(
                        "Filters",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                      )
                    ],
                  ),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.radio_button_checked_outlined,
                        color: ColorConstants.green,
                      ),
                      Text(
                        "Veg",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.egg,
                        color: ColorConstants.gold,
                      ),
                      Text(
                        "Egg",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_drop_up_outlined,
                        size: 30,
                        color: ColorConstants.brown,
                      ),
                      Text(
                        "Non-Veg",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.stars,
                        color: ColorConstants.gold,
                      ),
                      Text(
                        "Best seller",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.grade,
                        color: ColorConstants.brown,
                      ),
                      Text(
                        "Rated 4+",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: ColorConstants.mainGrey.withOpacity(0.4))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.soup_kitchen_outlined,
                          color: ColorConstants.mainRed,
                        ),
                        Text(
                          "Spicy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: ColorConstants.mainWhite,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorConstants.mainGrey.withOpacity(0.4)))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
