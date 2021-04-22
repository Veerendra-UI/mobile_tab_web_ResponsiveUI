import 'package:flutter/material.dart';

class NaveItem extends StatelessWidget {
  const NaveItem({Key key, this.tapEvent, this.title}) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
