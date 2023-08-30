import 'package:flutter/material.dart';

class StatsCard extends StatefulWidget {
  const StatsCard({super.key, required this.infoTitle, required this.info});

  final String infoTitle;
  final String info;

  @override
  State<StatsCard> createState() => _StatsCardState();
}

class _StatsCardState extends State<StatsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        width: 300,
        height: 0.4 * (MediaQuery.of(context).size.height),
        child: Column(
          children: [
            // make text title
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                widget.infoTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // make text subtitle
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                widget.info,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
