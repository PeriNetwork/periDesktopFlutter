// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatsCard extends StatelessWidget {
  const StatsCard(
      {super.key,
      required this.icon,
      required this.statsInfo,
      required this.statsNumber});

  final FaIcon icon;
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
      width: 0.9 * (MediaQuery.of(context).size.width),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: icon,
          ),
          Text(
            statsInfo,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            statsNumber.toString(),
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
