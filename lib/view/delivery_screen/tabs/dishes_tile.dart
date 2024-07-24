import 'package:flutter/material.dart';

class DishesTile extends StatelessWidget {
  const DishesTile({super.key, required this.url, required this.name});
  final String url, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Image.asset(
            url,
            height: 65,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
