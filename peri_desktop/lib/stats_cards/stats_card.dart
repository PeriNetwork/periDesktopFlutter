import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[850]),
      width: 0.9 * (MediaQuery.of(context).size.width),
      child: Row(
        children: [
          FaIcon(FontAwesomeIcons.users),
        ],
      ),
    );
  }
}
