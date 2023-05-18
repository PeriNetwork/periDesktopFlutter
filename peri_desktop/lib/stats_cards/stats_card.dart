// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard(
      {super.key,
      required this.icon,
      required this.statsInfo,
      this.statsNumber = 0});

  final IconData icon;
  final String statsInfo;
  final int statsNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 0.8 * (MediaQuery.of(context).size.width),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                icon,
                color: Colors.red,
              )),
          Text(
            statsInfo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
          Text(
            statsNumber == 0 ? "" : statsNumber.toString(),
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
