import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/view/dining_screen/tabs/times.dart';

class Breakfast extends StatelessWidget {
  const Breakfast({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: DummyDb.time.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
      itemBuilder: (context, index) => Times(
        time: DummyDb.time[index]['time'],
        offer: DummyDb.time[index]['offer'],
      ),
    );
  }
}
