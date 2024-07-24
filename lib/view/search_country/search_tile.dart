import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  const SearchTile(
      {super.key, required this.url, required this.name, required this.code});
  final String url, name, code;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            url,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          Spacer(),
          Text(
            code,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
