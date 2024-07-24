import 'package:flutter/material.dart';
import 'package:zomato_clone/dummy_db.dart';
import 'package:zomato_clone/view/search_country/search_tile.dart';

class SearchCountry extends StatelessWidget {
  SearchCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select your country",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Divider(),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SearchTile(
                      url: DummyDb.country[index]['url'],
                      name: DummyDb.country[index]['name'],
                      code: DummyDb.country[index]['code']),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: DummyDb.country.length)
            ],
          ),
        ),
      ),
    );
  }
}
