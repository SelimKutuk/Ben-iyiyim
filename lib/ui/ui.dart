
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


class IdWidget extends StatelessWidget {
  String id;
  GestureTapCallback onTap;
  IdWidget({
    required this.id,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .45,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(133, 209, 37, 1),
        ),
        child: Center(
            child: Text(
          id,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}


class TextLoginWidget extends StatelessWidget {
  String hintText;
  Color fillColor;
  Color textColor;
  TextStyle? textStyle;
  TextEditingController controller;
  TextLoginWidget({
    required this.hintText,
    required this.fillColor,
    required this.controller,
    this.textColor = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .75,
      child: TextField(
        controller: controller,
       // obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: textColor),
            filled: true,
            fillColor: fillColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
