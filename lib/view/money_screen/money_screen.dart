import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainGrey.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topContainer(),
            SizedBox(
              height: 15,
            ),
            _zomatoMoney(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 150,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("WALLET",
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
                  width: 150,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _buildWallet(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 130,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("GIFT CARDS",
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
                  width: 130,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _buildGiftCard(),
            SizedBox(
              height: 15,
            ),
            _buidBalancecard(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 80,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("ZOMATO FOR ENTERPRISE",
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
                  width: 80,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _buildEnterprise(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  Padding _buildEnterprise() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 220,
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Enterprise Meals",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cashless food benefits",
                            style: TextStyle(
                                color:
                                    ColorConstants.mainBlack.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "from your employer",
                            style: TextStyle(
                                color:
                                    ColorConstants.mainBlack.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConstants.EAT))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get started",
                  style: TextStyle(color: ColorConstants.pink),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: ColorConstants.pink,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _buidBalancecard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Claim a Gift Card",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gift Card Balance",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Balance: ₹0.00",
                      style: TextStyle(
                          color: ColorConstants.mainGrey, fontSize: 15),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Text(
                  "Purchase History",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        height: 220,
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Padding _buildGiftCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 220,
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Gift Cards",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_right),
                          Text(
                            "Buy & share instantly",
                            style: TextStyle(
                                color:
                                    ColorConstants.mainBlack.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_right),
                          Text(
                            "4 year validity",
                            style: TextStyle(
                                color:
                                    ColorConstants.mainBlack.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConstants.CARD))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Buy now",
                  style: TextStyle(color: ColorConstants.pink),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: ColorConstants.pink,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _buildWallet() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 220,
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Zomato Wallet",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Single click payments",
                        style: TextStyle(
                            color: ColorConstants.mainBlack.withOpacity(0.7),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConstants.WALLET))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create wallet",
                  style: TextStyle(color: ColorConstants.pink),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: ColorConstants.pink,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _zomatoMoney() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/images/wallet.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Zomato Money",
                  style:
                      TextStyle(color: ColorConstants.mainBlack, fontSize: 22),
                ),
                Spacer(),
                Text(
                  "LINK",
                  style: TextStyle(color: ColorConstants.pink, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  "Verify mobile to view Zomato Money balance",
                  style: TextStyle(color: ColorConstants.brown, fontSize: 16),
                ),
              ),
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: ColorConstants.brown.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.yellow.withOpacity(0.3)),
            )
          ],
        ),
        height: 160,
        decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Container _topContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_pin,
                color: ColorConstants.mainWhite,
                size: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Kerala",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontWeight: FontWeight.w800,
                              fontSize: 20)),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorConstants.mainWhite,
                      )
                    ],
                  ),
                  Text(
                    "India",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.comment,
                size: 30,
                color: ColorConstants.mainWhite,
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
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "M",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.8),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "O",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.8),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "N",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.7),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "E",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.6),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Y",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.5),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              )
            ],
          )
        ],
      ),
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Color.fromRGBO(5, 26, 44, 1)),
    );
  }
}
