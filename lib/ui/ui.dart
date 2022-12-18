
import 'package:flutter/material.dart';

class LargeCircleBtn extends StatelessWidget {
  GestureTapCallback onTap;
  String imagePath;
  LargeCircleBtn({
    required this.onTap,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .65,
        height: MediaQuery.of(context).size.height * .30,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Center(child: Image.asset(imagePath)),
      ),
    );
  }
}

class NotificationPop extends StatelessWidget {
  String text;
  NotificationPop({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .70,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}
