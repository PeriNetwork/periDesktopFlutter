import 'package:flutter/material.dart';

class StatsSectionButton extends StatelessWidget {
  const StatsSectionButton({super.key, required this.route, required this.icon, required this.color});

  final String route;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration:
            BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        width: 0.08 * (MediaQuery.of(context).size.height),
        height: 0.08 * (MediaQuery.of(context).size.height),
        child: Icon(icon, color: color, size: 40),
      ),
    );
  }
}
