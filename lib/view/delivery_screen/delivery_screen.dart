import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/tabs/dishes_tile.dart';
import 'package:zomato_clone/view/delivery_screen/tabs/hotels_tille.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/expolre_cards.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/food_ordering_screen.dart';
import 'package:zomato_clone/view/food_search_screen/food_search_screen.dart';
import 'package:zomato_clone/view/food_search_screen/widgets/food_type.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(children: [
          _searchTab(context),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _alertInfo(),
                  SizedBox(
                    height: 15,
                  ),
                  _adsBox(),
                  SizedBox(
                    height: 30,
                  ),
                  _exploreDivider(),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        itemBuilder: (context, index) => ExpolreCards(
                            url: DummyDb.explore[index]['url'],
                            text1: DummyDb.explore[index]['text1'],
                            text2: DummyDb.explore[index]['text2']),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: 5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _whatsonmindDivider(),
                  SizedBox(
                    height: 10,
                  ),
                  _foodList(), //food items list
                  SizedBox(
                    height: 30,
                  ),
                  _tabbar(), //all -near&fast
                  SizedBox(
                    height: 30,
                  ),
                  //sort-offers-rating
                  _deliveryOffers(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "15 restaurants delivering to you",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FEATURED",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodOrderingScreen(
                                        name: DummyDb.orders[index]['name'],
                                        rate: DummyDb.orders[index]['rate'],
                                        place: DummyDb.orders[index]['place'],
                                        rating: DummyDb.orders[index]['rating'],
                                        time: DummyDb.orders[index]['time']),
                                  ));
                            },
                            child: HotelsTille(
                                url: DummyDb.items[index]['image'],
                                name: DummyDb.items[index]['name'],
                                rate: DummyDb.items[index]['rate'],
                                time: DummyDb.items[index]['time'],
                                place: DummyDb.items[index]['Place']),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 25,
                          ),
                      itemCount: DummyDb.items.length),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Row _whatsonmindDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 80,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("WHAT'S ON YOUR MIND?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainBlack.withOpacity(0.7),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 80,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }

  Stack _searchTab(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 400,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Row(
            children: [
              Icon(
                Icons.location_pin,
                color: ColorConstants.pink,
                size: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Kerala",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontWeight: FontWeight.w800,
                              fontSize: 20)),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorConstants.mainBlack,
                      )
                    ],
                  ),
                  Text(
                    "India",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  )
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                child: Image.asset("assets/images/lang.png"),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              )
            ],
          ),
          height: 120,
        ),
        Positioned(
          bottom: 0,
          right: 6,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodSearchScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: ColorConstants.pink,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style:
                        TextStyle(color: ColorConstants.mainGrey, fontSize: 20),
                  ),
                  Spacer(),
                  VerticalDivider(
                    color: ColorConstants.mainGrey.withOpacity(0.4),
                    thickness: 2,
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mic_outlined,
                    color: ColorConstants.pink,
                  )
                ],
              ),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(6, 10),
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.3))
                  ]),
            ),
          ),
        )
      ],
    );
  }

  Padding _alertInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/bike.png",
            height: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Slow and steady win the rain! Delivery",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Text("partners may drive slower.",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ],
          )
        ],
      ),
    );
  }

  Row _exploreDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 150,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("EXPLORE",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.6),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 150,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }

  SizedBox _foodList() {
    return SizedBox(
      height: 220,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: DummyDb.dishes_list.length,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120, crossAxisSpacing: 5, crossAxisCount: 2),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodType(),
                ));
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DishesTile(
                  url: DummyDb.dishes_list[index]['pic'],
                  name: DummyDb.dishes_list[index]['name'])),
        ),
      ),
    );
  }

  Container _tabbar() {
    return Container(
      height: 55,
      width: 410,
      decoration: BoxDecoration(
          color: ColorConstants.mainGrey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)),
      child: TabBar(
          unselectedLabelColor: ColorConstants.primarygrey,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: ShapeDecoration(
              color: ColorConstants.mainBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          dividerColor: Colors.transparent,
          indicatorColor: ColorConstants.pink,
          tabs: [
            Tab(
              icon: Container(
                height: 30,
                child: Center(
                  child: Text(
                    "ALL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            Tab(
              icon: Container(
                  child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorConstants.mainWhite,
                        shape: BoxShape.rectangle),
                    height: 30,
                    width: 60,
                    child: Center(
                      child: Text(
                        "NEW",
                        style: TextStyle(
                            color: ColorConstants.green, fontSize: 16),
                      ),
                    ),
                  ),
                  Text(
                    "NEAR & FAST",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 18),
                  )
                ],
              )),
            ),
          ]),
    );
  }

  Padding _deliveryOffers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.tune,
                    color: ColorConstants.mainBlack,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sort",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorConstants.mainBlack,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: ColorConstants.mainBlack,
                    size: 30,
                  )
                ],
              ),
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.mainGrey),
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Center(
                child: Text(
                  "Great Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.mainGrey),
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Center(
                child: Text(
                  "Rating 4.0+",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  border: Border.all(color: ColorConstants.mainGrey),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Center(
                child: Text(
                  "Pure Veg",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  border: Border.all(color: ColorConstants.mainGrey),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Center(
                child: Text(
                  "Gourmet",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  border: Border.all(color: ColorConstants.mainGrey),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Cuisines",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: ColorConstants.mainBlack,
                      size: 30,
                    )
                  ],
                ),
              ),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  border: Border.all(color: ColorConstants.mainGrey),
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }

  ClipRRect _adsBox() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 200,
        width: 380,
        child: Image.asset(
          "assets/images/award.jpg",
          fit: BoxFit.fill,
        ),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
