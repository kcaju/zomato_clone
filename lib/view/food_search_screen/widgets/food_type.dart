import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/food_search_screen/tabs/dishes_tab.dart';
import 'package:zomato_clone/view/food_search_screen/tabs/restaurant_tab.dart';

class FoodType extends StatelessWidget {
  const FoodType({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _searchTab(context),
              SizedBox(
                height: 15,
              ),
              TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: ColorConstants.mainBlack,
                  labelStyle: TextStyle(fontSize: 22),
                  indicatorColor: ColorConstants.pink,
                  unselectedLabelColor: ColorConstants.mainGrey,
                  tabs: [
                    Tab(
                      text: "Restaurants",
                    ),
                    Tab(
                      text: "Dishes",
                    )
                  ]),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: TabBarView(children: [RestaurantTab(), DishesTab()]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _searchTab(BuildContext context) {
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
            "Search",
            style: TextStyle(color: ColorConstants.mainGrey, fontSize: 20),
          ),
          Spacer(),
          Icon(
            Icons.close,
            color: ColorConstants.primarygrey,
          ),
          SizedBox(
            height: 30,
            child: VerticalDivider(
              color: ColorConstants.mainGrey.withOpacity(0.3),
            ),
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
