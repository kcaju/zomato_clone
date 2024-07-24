import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';
import 'package:zomato_clone/view/dining_screen/widgets/book_table_screen.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({
    super.key,
    required this.url,
    required this.name,
    required this.rate,
    required this.place,
    required this.km,
    required this.price,
    required this.menu,
    required this.p1,
    required this.p2,
    required this.p3,
    required this.p4,
    required this.p5,
    required this.p6,
    required this.dishes,
  });
  final String url,
      name,
      rate,
      place,
      km,
      price,
      menu,
      p1,
      p2,
      p3,
      p4,
      p5,
      p6,
      dishes;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          //topsection
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _topSection(context),
                      //menu-about tabs
                      _selectionTabs(),

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Menu",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: ColorConstants.mainBlack,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1,
                            width: 330,
                            color: ColorConstants.mainBlack.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Last updated a year ago",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.pink,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "TOP DISHES",
                          style: TextStyle(
                              color: ColorConstants.mainGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      _topDishes(),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: _menuCard()),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Photos",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: ColorConstants.mainBlack,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1,
                            width: 330,
                            color: ColorConstants.mainBlack.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _photosCards(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Reviews",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: ColorConstants.mainBlack,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1,
                            width: 310,
                            color: ColorConstants.mainBlack.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _reviewSection(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("About the restaurant",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: ColorConstants.mainBlack,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1,
                            width: 200,
                            color: ColorConstants.mainBlack.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _aboutCard(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Explore other restaurants",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: ColorConstants.mainBlack,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1,
                            width: 150,
                            color: ColorConstants.mainBlack.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _moreHotels(),
                      SizedBox(
                        height: 30,
                      ),
                      _errorCard(),
                      SizedBox(
                        height: 30,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          "assets/images/zomatoicon.png",
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ),
              _bottomSection(context)
            ],
          ),
        ),
      ),
    );
  }

  Container _selectionTabs() {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
          color: ColorConstants.mainGrey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)),
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: ShapeDecoration(
              color: ColorConstants.mainWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: ColorConstants.pink))),
          dividerColor: Colors.transparent,
          indicatorColor: ColorConstants.pink,
          tabs: [
            Tab(
              icon: Container(
                height: 30,
                child: Center(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 14, color: ColorConstants.mainBlack),
                  ),
                ),
              ),
            ),
            Tab(
              icon: Container(
                child: Text(
                  "Photos",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.mainBlack),
                ),
              ),
            ),
            Tab(
              icon: Container(
                child: Text(
                  "Reviews",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.mainBlack),
                ),
              ),
            ),
            Tab(
              icon: Container(
                child: Text(
                  "About",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.mainBlack),
                ),
              ),
            ),
          ]),
    );
  }

  Column _menuCard() {
    return Column(
      children: [
        Image.asset(
          menu,
          height: 200,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Food",
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "22 pages",
          style: TextStyle(color: ColorConstants.mainBlack.withOpacity(0.5)),
        ),
      ],
    );
  }

  Padding _bottomSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookTableScreen(),
                  ));
            },
            child: Container(
              child: Center(
                child: Text(
                  "Book a Table",
                  style: TextStyle(
                      color: ColorConstants.pink,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstants.pink)),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            child: Center(
                child: Column(
              children: [
                Text(
                  "Pay a Bill",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                Text(
                  "Tap to view offers",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            )),
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: ColorConstants.pink,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }

  Padding _errorCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Found an error in the information? Help us rectify it",
              style: TextStyle(color: ColorConstants.mainBlack, fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Report error",
                  style: TextStyle(fontSize: 16, color: ColorConstants.pink),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 18,
                  color: ColorConstants.pink,
                )
              ],
            )
          ],
        ),
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstants.gold.withOpacity(0.1)),
      ),
    );
  }

  Padding _moreHotels() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageConstants.OFF,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "FLAT 30% OFF",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    height: 30,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.centerRight,
                            colors: [
                          ColorConstants.blue,
                          ColorConstants.blue.withOpacity(0.8),
                          ColorConstants.blue.withOpacity(0.8),
                          ColorConstants.blue.withOpacity(0.6),
                          Colors.transparent
                        ])),
                  ),
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Latest",
                            style: TextStyle(
                                color: ColorConstants.mainBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConstants.mainWhite),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                color: ColorConstants.maingreen,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      ),
                      Text(
                        "Recipe - Le...",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "10.2 km",
                        style: TextStyle(
                          color: ColorConstants.mainBlack.withOpacity(0.7),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            height: 240,
            width: 180,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 6),
                      color: ColorConstants.mainGrey.withOpacity(0.4),
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.mainWhite),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageConstants.OFF,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "FLAT 30% OFF",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    height: 30,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.centerRight,
                            colors: [
                          ColorConstants.blue,
                          ColorConstants.blue.withOpacity(0.8),
                          ColorConstants.blue.withOpacity(0.8),
                          ColorConstants.blue.withOpacity(0.6),
                          Colors.transparent
                        ])),
                  ),
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/239975/pexels-photo-239975.jpeg?auto=compress&cs=tinysrgb&w=400"))),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Fort House",
                            style: TextStyle(
                                color: ColorConstants.mainBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConstants.mainWhite),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                color: ColorConstants.maingreen,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      ),
                      Text(
                        "Restaurant",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "13.8 km",
                        style: TextStyle(
                          color: ColorConstants.mainBlack.withOpacity(0.7),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            height: 240,
            width: 180,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 6),
                      color: ColorConstants.mainGrey.withOpacity(0.4),
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.mainWhite),
          ),
        ],
      ),
    );
  }

  Padding _aboutCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: ColorConstants.gold,
                      child: Icon(
                        Icons.currency_rupee_outlined,
                        color: ColorConstants.mainWhite,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: ColorConstants.primarygrey, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.ramen_dining,
                      color: ColorConstants.mainGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dishes,
                            style: TextStyle(
                                color: ColorConstants.primarygrey,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: ColorConstants.pink,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            place,
                            style: TextStyle(
                                color: ColorConstants.primarygrey,
                                fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Facilities",
                        style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.mainBlack,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 1,
                      width: 280,
                      color: ColorConstants.mainGrey.withOpacity(0.3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: ColorConstants.mainGrey,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Home Delivery",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: ColorConstants.mainGrey,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Takeaway Available",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: ColorConstants.mainGrey,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Desserts and Bakes",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: ColorConstants.mainGrey,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Indoor Seating",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: ColorConstants.mainGrey,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Family Friendly",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            height: 340,
            decoration: BoxDecoration(
                color: ColorConstants.gold.withOpacity(0.1),
                border: Border.all(color: ColorConstants.gold),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.electric_moped,
                  color: ColorConstants.pink,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Looking for food delivery?",
                      style: TextStyle(
                          color: ColorConstants.mainBlack, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("view delivery menu",
                        style: TextStyle(
                            color: ColorConstants.mainBlack, fontSize: 15))
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: ColorConstants.pink,
                )
              ],
            ),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border:
                  Border.all(color: ColorConstants.mainGrey.withOpacity(0.3)),
            ),
          )
        ],
      ),
    );
  }

  Column _reviewSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "comfortable seating",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.mainGrey.withOpacity(0.3)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "good view",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.mainGrey.withOpacity(0.3)),
                ),
                Container(
                  child: Center(
                    child: Text(
                      "comfortable seating",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.mainGrey.withOpacity(0.3)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "friendly service",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.mainGrey.withOpacity(0.3)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(
                        ImageConstants.PROFILE,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Malini",
                          style: TextStyle(
                              color: ColorConstants.mainBlack, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1 month ago",
                          style: TextStyle(
                              color: ColorConstants.mainGrey, fontSize: 18),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                                color: ColorConstants.mainWhite, fontSize: 18),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: ColorConstants.mainWhite,
                          )
                        ],
                      ),
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                          color: ColorConstants.gold,
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "the food was really delicious except the prawns. there was a hair in i ..more",
                  style:
                      TextStyle(color: ColorConstants.mainBlack, fontSize: 16),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/2098131/pexels-photo-2098131.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/2410602/pexels-photo-2410602.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 110,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/6287552/pexels-photo-6287552.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                    ),
                  ],
                )
              ],
            ),
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorConstants.mainGrey)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.pink.withOpacity(0.2),
                  child: Icon(
                    Icons.note_alt_outlined,
                    color: ColorConstants.pink,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Leave a review",
                  style:
                      TextStyle(color: ColorConstants.mainBlack, fontSize: 22),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: ColorConstants.pink,
                ),
              ],
            ),
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstants.mainGrey.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "See all reviews",
                style: TextStyle(color: ColorConstants.pink, fontSize: 16),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstants.pink,
                size: 15,
              )
            ],
          ),
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              border:
                  Border.all(color: ColorConstants.mainGrey.withOpacity(0.3)),
              color: ColorConstants.mainGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }

  Padding _topDishes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: ColorConstants.gold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Brownie Custard",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.gold.withOpacity(0.1)),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: ColorConstants.gold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "French Soup",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.gold.withOpacity(0.1)),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 12,
                      color: ColorConstants.gold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Pandan Chicken",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorConstants.gold.withOpacity(0.1))),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: ColorConstants.gold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Prawn Mango Curry",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.gold.withOpacity(0.1)),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: ColorConstants.gold,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Elaneer Pudding",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.gold.withOpacity(0.1)),
            ),
          ],
        ),
      ),
    );
  }

  Column _photosCards() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 245,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(p1)),
                    color: ColorConstants.mainBlack,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(p2)),
                        color: ColorConstants.mainBlack,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(p3)),
                        color: ColorConstants.mainBlack,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(p4)),
                    color: ColorConstants.mainBlack,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(p5)),
                    color: ColorConstants.mainBlack,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(p6)),
                    color: ColorConstants.mainBlack,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_a_photo_outlined,
                color: ColorConstants.pink,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Add photo",
                style: TextStyle(
                    color: ColorConstants.pink,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              border:
                  Border.all(color: ColorConstants.mainGrey.withOpacity(0.3)),
              color: ColorConstants.mainGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }

  Stack _topSection(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 550,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor:
                          ColorConstants.mainBlack.withOpacity(0.2),
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: ColorConstants.mainBlack.withOpacity(0.2),
                    radius: 30,
                    child: Icon(
                      Icons.favorite_outline,
                      size: 35,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.mainBlack.withOpacity(0.2),
                    radius: 30,
                    child: Icon(
                      Icons.ios_share_outlined,
                      size: 35,
                      color: ColorConstants.mainWhite,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    place,
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        km,
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Opens at 11am",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 16),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              )
            ],
          ),
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url)),
            color: ColorConstants.mainBlack,
          ),
        ),
        Positioned(
          bottom: 110,
          right: 10,
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rate,
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.star,
                        color: ColorConstants.mainWhite,
                      )
                    ],
                  ),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
                Column(
                  children: [
                    Text(
                      "1753",
                      style: TextStyle(
                          color: ColorConstants.mainBlack, fontSize: 18),
                    ),
                    Text(
                      "Reviews",
                      style: TextStyle(
                          color: ColorConstants.primarygrey, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: ColorConstants.mainWhite,
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.east,
                  color: ColorConstants.pink,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Directions",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                )
              ],
            ),
            height: 70,
            width: 190,
            decoration: BoxDecoration(
              color: ColorConstants.mainWhite,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk,
                  color: ColorConstants.pink,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Call",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                )
              ],
            ),
            height: 70,
            width: 190,
            decoration: BoxDecoration(
              color: ColorConstants.mainWhite,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        )
      ],
    );
  }
}
