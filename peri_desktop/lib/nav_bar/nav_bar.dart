import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Image(
        image: AssetImage(
          'assets/images/peri_logo.png',
        ),
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}
