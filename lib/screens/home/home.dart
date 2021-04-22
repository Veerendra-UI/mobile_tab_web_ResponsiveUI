import 'package:flutter/material.dart';
import 'package:responsive_design/components/footer.dart';
import 'package:responsive_design/components/header.dart';
import 'package:responsive_design/components/jumbotron.dart';
import 'package:responsive_design/components/slidemenu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SlideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                Jumbotron(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
