// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../components/stats_section.dart';
import '../nav_bar/nav_bar.dart';

class PostStatisticsPage extends StatefulWidget {
  const PostStatisticsPage({super.key});

  @override
  State<PostStatisticsPage> createState() => _PostStatisticsPageState();
}

class _PostStatisticsPageState extends State<PostStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50), child: NavBar()),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatsSectionButton(
                      icon: Icons.person, route: '/user_statistics', color: Colors.grey),
                  SizedBox(width: 20),
                  StatsSectionButton(
                      icon: Icons.edit_square, route: '/posts_statistics', color: Colors.red),
                ],
              ),
            ),
            
          ],
        ));
  }
}