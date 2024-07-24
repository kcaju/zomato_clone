import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/tabs/hotels_tille.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/food_ordering_screen.dart';

class RestaurantTab extends StatelessWidget {
  const RestaurantTab({super.key});

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
              _sortSection(),
              SizedBox(
                height: 20,
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
            ],
          ),
        ),
      ),
    );
  }

  Padding _sortSection() {
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
}
