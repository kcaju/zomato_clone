import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/food_search_screen/widgets/food_tile.dart';
import 'package:zomato_clone/view/food_search_screen/widgets/food_type.dart';

class DeliveryTab extends StatelessWidget {
  const DeliveryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 85,
                color: ColorConstants.mainGrey.withOpacity(0.2),
              ),
              SizedBox(
                width: 5,
              ),
              Text("WHAT'S ON YOUR MIND?",
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
                width: 85,
                color: ColorConstants.mainGrey.withOpacity(0.2),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            itemCount: DummyDb.dishes.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 180, mainAxisSpacing: 10, crossAxisCount: 3),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodType(),
                    ));
              },
              child: FoodTile(
                  url: DummyDb.dishes[index]['pic'],
                  name: DummyDb.dishes[index]['name']),
            ),
          )
        ],
      ),
    );
  }
}
