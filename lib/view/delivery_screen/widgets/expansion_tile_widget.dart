import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/widgets/recommended_food.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.mainWhite,
      child: ExpansionTile(
        backgroundColor: ColorConstants.mainWhite,
        title: Text(
          "Recommended for you",
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        trailing: Icon(
          _customTileExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          size: 30,
          color: ColorConstants.mainBlack,
        ),
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => RecommendedFood(
                  name: DummyDb.expansiondetails[index]['name'],
                  rating: DummyDb.expansiondetails[index]['rating'],
                  url: DummyDb.expansiondetails[index]['url'],
                  details: DummyDb.expansiondetails[index]['details']),
              separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: ColorConstants.mainGrey,
                  ),
              itemCount: DummyDb.expansiondetails.length)
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customTileExpanded = expanded;
          });
        },
      ),
    );
  }
}
