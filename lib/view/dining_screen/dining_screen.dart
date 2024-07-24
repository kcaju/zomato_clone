import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';
import 'package:zomato_clone/view/dining_screen/widgets/build_cards.dart';
import 'package:zomato_clone/view/dining_screen/widgets/hotel_cards.dart';
import 'package:zomato_clone/view/dining_screen/widgets/hotel_details_screen.dart';
import 'package:zomato_clone/view/food_search_screen/food_search_screen.dart';

class DiningScreen extends StatelessWidget {
  const DiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _searchtab(context),
            SizedBox(
              height: 20,
            ),
            _tabs(),
            SizedBox(
              height: 10,
            ),
            _exploreDivider(),
            SizedBox(
              height: 20,
            ),
            _offersTab(),
            SizedBox(
              height: 10,
            ),
            _bookingTab(),
            SizedBox(
              height: 20,
            ),
            _limelightDivider(),
            _limelightCard(),
            SizedBox(
              height: 20,
            ),
            _lookingForDivider(),
            SizedBox(
              height: 20,
            ),
            _lookingForCards(),
            SizedBox(
              height: 20,
            ),
            _musttriesDivider(),
            SizedBox(
              height: 20,
            ),
            BuildCards(
              text: DummyDb.captions,
              cardImages: DummyDb.carddetails,
              isgivenHeight: true,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore more",
                    style: TextStyle(color: ColorConstants.pink),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: ColorConstants.pink,
                  )
                ],
              ),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  color: ColorConstants.mainGrey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 20,
            ),
            _bankOffers(),
            SizedBox(
              height: 15,
            ),
            BuildCards(
              text: DummyDb.offer,
              isBank: true,
              cardImages: DummyDb.whitebg,
              customWidth: 140,
            ),
            SizedBox(
              height: 20,
            ),
            _populaHotelsDivider(),
            ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelDetailsScreen(
                                menu: DummyDb.hoteldetails[index]['menu'],
                                url: DummyDb.hoteldetails[index]['url'],
                                name: DummyDb.hoteldetails[index]['name'],
                                rate: DummyDb.hoteldetails[index]['rate'],
                                place: DummyDb.hoteldetails[index]['place'],
                                km: DummyDb.hoteldetails[index]['km'],
                                price: DummyDb.hoteldetails[index]['price'],
                                p1: DummyDb.hoteldetails[index]['p1'],
                                p2: DummyDb.hoteldetails[index]['p2'],
                                p3: DummyDb.hoteldetails[index]['p3'],
                                p4: DummyDb.hoteldetails[index]['p4'],
                                p5: DummyDb.hoteldetails[index]['p5'],
                                p6: DummyDb.hoteldetails[index]['p6'],
                                dishes: DummyDb.hoteldetails[index]['dishes'],
                              ),
                            ));
                      },
                      child: HotelCards(
                          url: DummyDb.restaurants[index]['url'],
                          name: DummyDb.restaurants[index]['name'],
                          rate: DummyDb.restaurants[index]['rate'],
                          place: DummyDb.restaurants[index]['place'],
                          state: DummyDb.restaurants[index]['state'],
                          price: DummyDb.restaurants[index]['price'],
                          km: DummyDb.restaurants[index]['km']),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: DummyDb.restaurants.length)
          ],
        ),
      ),
    );
  }

  Row _populaHotelsDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 50,
          color: ColorConstants.mainBlack.withOpacity(0.2),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text("POPULAR RESTARAUNTS AROUND",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),
                )),
            Text("YOU",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.mainBlack.withOpacity(0.6),
                )),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 50,
          color: ColorConstants.mainBlack.withOpacity(0.2),
        ),
      ],
    );
  }

  Row _bankOffers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 90,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("AVAILABLE BANK OFFERS",
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
          width: 90,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }

  Row _musttriesDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 60,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("MUST TRIES IN KOCHI",
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
          width: 60,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
      ],
    );
  }

  Row _lookingForDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 60,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("WHAT ARE YOU LOOKING FOR",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainBlack.withOpacity(0.6),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 60,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
      ],
    );
  }

  Row _limelightDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 110,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("IN THE LIMELIGHT",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainBlack.withOpacity(0.6),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 110,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
      ],
    );
  }

  Row _exploreDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 150,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
        SizedBox(
          width: 5,
        ),
        Text("EXPLORE",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainBlack.withOpacity(0.6),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 150,
          color: ColorConstants.mainGrey.withOpacity(0.3),
        ),
      ],
    );
  }

  Stack _limelightCard() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstants.PLACE1))),
          ),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  ImageConstants.DISCOUNT,
                  height: 20,
                ),
                Text(
                  "Up to 45% OFF",
                  style: TextStyle(color: ColorConstants.mainWhite),
                )
              ],
            ),
            height: 30,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.mainBlack),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 30,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Tharavadu Multi Cuisine Restaurant Casino Hotel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mainWhite),
          ),
        ),
        Positioned(
          left: 30,
          bottom: 40,
          child: Container(
            child: Center(
              child: Text(
                "One of its kind",
                style: TextStyle(color: ColorConstants.mainWhite),
              ),
            ),
            height: 20,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.mainBlack),
          ),
        ),
      ],
    );
  }

  Container _lookingForCards() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/59/ff/c9/59ffc930f3855887bae8e5e61c1d9d27.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Live Sports Screening",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "TRENDING",
                      style: TextStyle(color: ColorConstants.mainWhite),
                    )),
                    height: 20,
                    width: 120,
                    decoration: BoxDecoration(
                        color: ColorConstants.pink,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/53/da/5a/53da5af6bb22aba6d835681dac560be4.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Pure Veg",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/95/6d/bc/956dbca531552368406426d29304f0cc.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Premium Dining",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/a8/ca/0f/a8ca0fd6894db828c12767afb4f3e2f1.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Buffet",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/79/4c/cf/794ccf2844491fc34530e855a9b8a531.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Family Dining",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomCenter,
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/67/cd/c1/67cdc1683f91f9916de003ca3c94ef57.jpg")),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Cafe",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              ColorConstants.mainBlack,
                              Colors.transparent
                            ])),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      height: 380,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
            Colors.amber.shade100,
            Colors.transparent,
          ])),
    );
  }

  Padding _bookingTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Column(
                  children: [
                    Icon(
                      Icons.group,
                      size: 30,
                      color: ColorConstants.brown,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Group Booking",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                height: 140,
                width: 90,
                decoration: BoxDecoration(
                    color: ColorConstants.mainGrey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  ImageConstants.NEW_PNG,
                  height: 50,
                ),
              )
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 40,
                  color: ColorConstants.gold,
                ),
                Text(
                  "Restaurant Awards",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            height: 140,
            width: 105,
            decoration: BoxDecoration(
                color: ColorConstants.mainGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.hotel_class,
                  size: 40,
                  color: ColorConstants.brown,
                ),
                Text(
                  "Top Rated",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            height: 140,
            width: 90,
            decoration: BoxDecoration(
                color: ColorConstants.mainGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.grid_view,
                  size: 40,
                  color: ColorConstants.brown,
                ),
                Text(
                  "View all",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            height: 140,
            width: 90,
            decoration: BoxDecoration(
                color: ColorConstants.mainGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }

  Padding _offersTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Walk-in offers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Image.asset(
                      ImageConstants.OFFER,
                      height: 40,
                    )
                  ],
                ),
                height: 150,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorConstants.mainGrey.withOpacity(0.2)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  ImageConstants.FREE,
                  height: 100,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pre-book your offer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Image.asset(
                      ImageConstants.OFFER,
                      height: 40,
                    )
                  ],
                ),
                height: 150,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorConstants.mainGrey.withOpacity(0.2)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  ImageConstants.CALENDAR,
                  height: 70,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding _tabs() {
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
                    "Filters",
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
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.mainGrey),
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.percent,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Text(
                    " Offers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorConstants.mainBlack,
                    ),
                  ),
                ],
              ),
              height: 40,
              width: 100,
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
                  "Near & Top Rated",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 160,
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
                  "Book a Table",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                  "Limited slots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
              child: Row(
                children: [
                  Icon(
                    Icons.eco,
                    color: ColorConstants.maingreen,
                  ),
                  Text(
                    "Veg-only",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorConstants.mainBlack,
                    ),
                  ),
                ],
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
                  "Pet Friendly",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                  "Outdoor Seating",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 150,
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
                  "Serves Alcohol",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 150,
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
                  "Open Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                  "Cafe's",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                  ),
                ),
              ),
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  border: Border.all(color: ColorConstants.mainGrey),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  Stack _searchtab(BuildContext context) {
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
}
