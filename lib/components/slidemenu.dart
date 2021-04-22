import 'package:flutter/material.dart';
import 'package:responsive_design/components/menuitems.dart';

class SlideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NaveItem(
                title: 'Home',
                tapEvent: () {},
              ),
              SizedBox(
                height: 10,
              ),
              NaveItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),
              SizedBox(
                height: 10,
              ),
              NaveItem(
                title: 'Login',
                tapEvent: () {},
              ),
              SizedBox(
                height: 10,
              ),
              NaveItem(
                title: 'Shop',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
