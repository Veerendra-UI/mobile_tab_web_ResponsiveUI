import 'package:flutter/material.dart';
import 'package:responsive_design/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Text(
            'All Right Reserved',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavItem(
                title: 'Twitter',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Facebook',
                tapEvent: () {},
              ),
              NavItem(
                title: 'LinkedIn',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Instagram',
                tapEvent: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'All Right Reserved',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                NavItem(
                  title: 'Twitter',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Facebook',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'LinkedIn',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Instagram',
                  tapEvent: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key key, this.tapEvent, this.title}) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.green, fontSize: 12),
        ),
      ),
    );
  }
}
