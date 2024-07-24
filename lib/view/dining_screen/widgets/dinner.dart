import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/view/dining_screen/tabs/times.dart';

class Dinner extends StatelessWidget {
  const Dinner({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: DummyDb.dinner.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
      itemBuilder: (context, index) => Times(
        time: DummyDb.dinner[index]['time'],
        offer: DummyDb.dinner[index]['offer'],
      ),
    );
  }
}
