import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key, required this.menu});
  final List<String> menu;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) => Container(
              color: ColorConstants.mainWhite,
              height: 80,
              child: Row(
                children: [
                  Text(
                    menu[index],
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_up,
                    size: 35,
                  )
                ],
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
        itemCount: DummyDb.menu.length);
  }
}
