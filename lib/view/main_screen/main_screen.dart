import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/view/delivery_screen/delivery_screen.dart';
import 'package:zomato_clone/view/dining_screen/dining_screen.dart';
import 'package:zomato_clone/view/money_screen/money_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectindex = 0;

  final List<Widget> pages = [DeliveryScreen(), DiningScreen(), MoneyScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedLabelStyle: TextStyle(color: ColorConstants.mainBlack),
          selectedItemColor: ColorConstants.pink,
          unselectedItemColor: ColorConstants.mainGrey,
          useLegacyColorScheme: false,
          currentIndex: selectindex,
          onTap: (value) {
            selectindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.electric_moped,
                ),
                label: "Delivery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.lunch_dining), label: "Dining"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Money")
          ]),
    );
  }
}
