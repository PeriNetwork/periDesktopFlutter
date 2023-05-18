// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../nav_bar/nav_bar.dart';
import '../stats_cards/stats_card.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: NavBar()),
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            StatsCard(
                icon: Icons.group, statsInfo: "Comunidades: ", statsNumber: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 80),
                  child: SizedBox(),
                ),
                StatsCard(
                    icon: Icons.person,
                    statsInfo: "Comunidade mais seguida: PeriCommunity ",
                    statsNumber: 0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 80),
                  child: SizedBox(),
                ),
                StatsCard(
                    icon: Icons.person,
                    statsInfo: "Usuário mais seguido: PeriUser",
                    statsNumber: 0),
              ],
            ),
            StatsCard(
                icon: Icons.person, statsInfo: "Usuários: ", statsNumber: 323),
          ],
        ),
      ),
    );
  }
}
