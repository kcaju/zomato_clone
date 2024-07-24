import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/food_search_screen/widgets/dish_card.dart';

class DishesTab extends StatelessWidget {
  const DishesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _tabbarSection(),
              SizedBox(
                height: 20,
              ),
              _rowTabs(),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => DishCard(
                      name: DummyDb.dishcard[index]['name'],
                      rating: DummyDb.dishcard[index]['rating'],
                      url: DummyDb.dishcard[index]['url'],
                      title: DummyDb.dishcard[index]['title'],
                      time: DummyDb.dishcard[index]['time'],
                      rate: DummyDb.dishcard[index]['rate']),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: DummyDb.dishcard.length),
            ],
          ),
        ),
      ),
    );
  }

  TabBar _tabbarSection() {
    return TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: ColorConstants.mainBlack,
        labelStyle: TextStyle(fontSize: 15),
        indicatorColor: ColorConstants.pink,
        unselectedLabelColor: ColorConstants.mainGrey,
        tabs: [
          SizedBox(
            height: 120,
            child: Tab(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1645803443/photo/plain-pulao-or-polao-with-fried-onion-basmati-chawal-served-in-dish-isolated-on-background.jpg?b=1&s=612x612&w=0&k=20&c=4vuKRdSm_FS8yWXAxtmjQfx8raTVTFpla7Z1wR18VUI=")),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Biriyani",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Tab(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1857353239/photo/haydrabadi-biriyani.jpg?b=1&s=612x612&w=0&k=20&c=jie6ehs4ojWas98Yu07PXt6_VMRHc_Ai_qABAWI8hFk=")),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Chicken",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Tab(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1817571082/photo/homemade-chicken-dum-biryani.jpg?b=1&s=612x612&w=0&k=20&c=P8ubXu3Q2hcWX5NZddWPVywcWUOcIxRGC-WwqhUGMkg=")),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Beef",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Tab(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1645803443/photo/plain-pulao-or-polao-with-fried-onion-basmati-chawal-served-in-dish-isolated-on-background.jpg?b=1&s=612x612&w=0&k=20&c=4vuKRdSm_FS8yWXAxtmjQfx8raTVTFpla7Z1wR18VUI=")),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Veg",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  )
                ],
              ),
            ),
          ),
        ]);
  }

  Padding _rowTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstants.mainGrey)),
              child: Row(
                children: [
                  Icon(
                    Icons.tune,
                    color: ColorConstants.mainBlack,
                  ),
                  Text(
                    "Sort",
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: ColorConstants.mainBlack,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstants.mainGrey)),
              child: Text(
                "Near and Fast",
                style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstants.mainGrey)),
              child: Text(
                "Great Offers",
                style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorConstants.mainGrey)),
              child: Text(
                "Rating 4+",
                style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
