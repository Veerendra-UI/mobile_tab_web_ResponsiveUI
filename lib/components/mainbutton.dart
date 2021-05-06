import 'package:flutter/material.dart';
import 'package:responsive_design/constansts.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key key, this.tapEvent, this.title, this.color})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
        onPressed: tapEvent,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(vPrimaryColor),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
