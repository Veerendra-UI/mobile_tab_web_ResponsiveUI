import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_design/components/menuitems.dart';
import 'package:responsive_design/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Skycliff IT",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NaveItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                NaveItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
                NaveItem(
                  title: 'Login',
                  tapEvent: () {},
                ),
                NaveItem(
                  title: 'Shop',
                  tapEvent: () {},
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
