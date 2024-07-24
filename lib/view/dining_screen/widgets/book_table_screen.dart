import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';
import 'package:zomato_clone/view/dining_screen/widgets/breakfast.dart';
import 'package:zomato_clone/view/dining_screen/widgets/dinner.dart';
import 'package:zomato_clone/view/dining_screen/widgets/lunch.dart';

class BookTableScreen extends StatefulWidget {
  const BookTableScreen({
    super.key,
  });

  @override
  State<BookTableScreen> createState() => _BookTableScreenState();
}

class _BookTableScreenState extends State<BookTableScreen> {
  List<String> dates = [
    "Tomorrow",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> guest = ["2 guests", "3 guests", "4 guests", "5 guests"];
  String? drpValue, guestValue;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorConstants.royalblue.withOpacity(0.5),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: ColorConstants.mainWhite,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Book a table",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _dateTab(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: _timeSelection(),
                ),
                _proceedButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _timeSelection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(color: ColorConstants.lightblue),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstants.OFFER,
                        height: 40,
                      ),
                      Text(
                        "offer slots available from",
                        style: TextStyle(color: ColorConstants.primarygrey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "12:00 PM",
                        style:
                            TextStyle(color: ColorConstants.pink, fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: ColorConstants.pink,
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
              height: 90,
              decoration: BoxDecoration(
                  color: ColorConstants.gold.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Select time of day",
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
                  width: 210,
                  color: ColorConstants.mainBlack.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 300,
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
                                  "Breakfast",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorConstants.mainBlack),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            icon: Container(
                              child: Text(
                                "Lunch",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConstants.mainBlack),
                              ),
                            ),
                          ),
                          Tab(
                            icon: Container(
                              child: Text(
                                "Dinner",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorConstants.mainBlack),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child:
                        TabBarView(children: [Breakfast(), Lunch(), Dinner()]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View all slots",
                        style:
                            TextStyle(color: ColorConstants.pink, fontSize: 18),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: ColorConstants.pink,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Select your preferred time slot to view available booking options",
                style: TextStyle(
                    color: ColorConstants.primarygrey.withOpacity(0.8),
                    fontSize: 18),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.mainWhite),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Padding _dateTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.event_available_outlined,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 5,
                ),
                DropdownButton(
                  hint: Text(
                    "Tomorrow",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  iconEnabledColor: ColorConstants.mainWhite,
                  value: drpValue,
                  items: List.generate(
                    dates.length,
                    (index) => DropdownMenuItem(
                        value: dates[index], child: Text(dates[index])),
                  ),
                  onChanged: (value) {
                    drpValue = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            height: 50,
            decoration: BoxDecoration(
                color: ColorConstants.lightblue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.group,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 5,
                ),
                DropdownButton(
                  style: TextStyle(fontSize: 18),
                  hint: Text(
                    "2 guests",
                    style: TextStyle(color: ColorConstants.mainBlack),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  iconEnabledColor: ColorConstants.mainWhite,
                  value: guestValue,
                  items: List.generate(
                    guest.length,
                    (index) => DropdownMenuItem(
                        value: guest[index],
                        child: Text(
                          guest[index],
                          style: TextStyle(color: ColorConstants.mainBlack),
                        )),
                  ),
                  onChanged: (value) {
                    guestValue = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            height: 50,
            decoration: BoxDecoration(
                color: ColorConstants.lightblue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
          ),
        ],
      ),
    );
  }

  Container _proceedButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      width: double.infinity,
      height: 80,
      color: ColorConstants.mainWhite,
      child: Container(
        child: Center(
          child: Text(
            "Proceed",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        height: 40,
        decoration: BoxDecoration(
            color: ColorConstants.mainGrey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
