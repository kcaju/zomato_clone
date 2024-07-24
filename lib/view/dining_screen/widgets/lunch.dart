import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/view/dining_screen/tabs/times.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: DummyDb.lunch.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
      itemBuilder: (context, index) => Times(
        time: DummyDb.lunch[index]['time'],
        offer: DummyDb.lunch[index]['offer'],
      ),
    );
  }
}
