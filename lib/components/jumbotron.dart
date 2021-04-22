import 'package:flutter/material.dart';
import 'package:responsive_design/components/mainbutton.dart';
import 'package:responsive_design/constansts.dart';
import 'package:responsive_design/responsive.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  if (isMobile(context))
                    Image.asset(
                      'assets/images/nature.png',
                      height: size.height * 0.7,
                    ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Buy',
                        style: TextStyle(
                          fontSize: isDesktop(context) ? 64 : 32,
                        )),
                    TextSpan(
                        text: 'cruelty Free',
                        style: TextStyle(
                          fontSize: isDesktop(context) ? 64 : 32,
                        )),
                  ])),
                  Text(
                    'Makup Products',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w200),
                  ),
                  Text(
                    'Online Today',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Help us in macking this world a better place for animals.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 36 : 18,
                        fontWeight: FontWeight.w100),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      MainButton(
                        title: 'Get Started',
                        color: Colors.yellow,
                        tapEvent: () {},
                      ),
                      MainButton(
                        title: 'Watch Video',
                        color: Colors.green,
                        tapEvent: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (isDesktop(context) || isTab(context))
            Expanded(
                child: Image.asset(
              'assets/images/nature.png',
              height: size.height * 0.7,
            ))
        ],
      ),
    );
  }
}
