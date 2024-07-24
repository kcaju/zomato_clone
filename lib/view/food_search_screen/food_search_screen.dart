import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

import 'package:zomato_clone/view/food_search_screen/tabs/delivery_tab.dart';
import 'package:zomato_clone/view/food_search_screen/tabs/dining_tab.dart';

class FoodSearchScreen extends StatefulWidget {
  const FoodSearchScreen({super.key});

  @override
  State<FoodSearchScreen> createState() => _FoodSearchScreenState();
}

class _FoodSearchScreenState extends State<FoodSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              _searchBar(context),
              SizedBox(
                height: 15,
              ),
              TabBar(
                  labelColor: ColorConstants.pink,
                  labelStyle: TextStyle(fontSize: 22),
                  indicatorColor: ColorConstants.pink,
                  unselectedLabelColor: ColorConstants.mainGrey,
                  tabs: [
                    Tab(
                      text: "Delivery",
                    ),
                    Tab(
                      text: "Dining",
                    )
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    DeliveryTab(),
                    DiningTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _searchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: ColorConstants.pink,
              size: 35,
            ),
          ),
          Text(
            "Restaurant name or a dish...",
            style: TextStyle(color: ColorConstants.mainGrey, fontSize: 20),
          ),
          Spacer(),
          Container(
            width: 1,
            height: 30,
            color: ColorConstants.mainGrey.withOpacity(0.5),
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
    );
  }
}
