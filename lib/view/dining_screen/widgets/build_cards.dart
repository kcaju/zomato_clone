import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';

class BuildCards extends StatelessWidget {
  const BuildCards(
      {super.key,
      this.customHeight = 200,
      this.customWidth = 160,
      this.isgivenHeight = false,
      required this.cardImages,
      this.isBank = false,
      required this.text});
  final double customHeight, customWidth;
  final bool isgivenHeight, isBank;
  final List<String> cardImages;
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isgivenHeight ? customHeight : customWidth,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                height: customHeight,
                width: customWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: isBank,
                      child: Column(
                        children: [
                          Text(
                            DummyDb.banks[index]['card'],
                            style: TextStyle(
                                color: ColorConstants.mainGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            DummyDb.banks[index]['url'],
                            height: 30,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      text[index],
                      style: TextStyle(
                          fontWeight:
                              isBank ? FontWeight.normal : FontWeight.bold,
                          fontSize: isBank ? 15 : 20,
                          color: isBank
                              ? ColorConstants.mainBlack
                              : ColorConstants.mainWhite),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(cardImages[index])),
                    color: ColorConstants.mainBlack,
                    borderRadius: BorderRadius.circular(10)),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
          itemCount: cardImages.length),
    );
  }
}
