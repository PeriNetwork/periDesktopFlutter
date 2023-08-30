// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peri_desktop/api/api_service_peri_user.dart';
import 'package:peri_desktop/components/stats_card.dart';
import 'package:peri_desktop/components/stats_section.dart';
import '../nav_bar/nav_bar.dart';

class UserStatisticsPage extends StatefulWidget {
  const UserStatisticsPage({super.key});

  @override
  State<UserStatisticsPage> createState() => _UserStatisticsPageState();
}

class _UserStatisticsPageState extends State<UserStatisticsPage> {
  //int qtdUsers = ApiServicePeriUser.getUsersCount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50), child: NavBar()),
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StatsSectionButton(
                          icon: Icons.person,
                          route: '/user_statistics',
                          color: Colors.red),
                      SizedBox(width: 20),
                      StatsSectionButton(
                          icon: Icons.edit_square,
                          route: '/posts_statistics',
                          color: Colors.grey),
                    ],
                  ),
                ),
                SizedBox(
                  width: 0.8 * (MediaQuery.of(context).size.width),
                  child: Wrap(alignment: WrapAlignment.center, children: [
                    StatsCard(
                        infoTitle: "Usuários",
                        info: ApiServicePeriUser.getUsersCount().toString()),
                  ]),
                )
              ],
            )
          ],
        ));
  }
}
