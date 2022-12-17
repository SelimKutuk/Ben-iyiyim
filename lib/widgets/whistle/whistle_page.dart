import 'package:flutter/material.dart';

class WhistlePage extends StatefulWidget {
  const WhistlePage({Key? key}) : super(key: key);

  @override
  State<WhistlePage> createState() => _WhistlePageState();
}

class _WhistlePageState extends State<WhistlePage> {
  // manuel bir şekilde acil durumda app üzerinden düdük çalma
  @override
  Widget build(BuildContext context) {
    bool _auto = true;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 76, 216, 81),
                    backgroundImage: AssetImage("assets/icon/account_ico.png"),
                  )
                ],
              ),
            ),
            // notification popup
            NotificationPop(
              text: "Sesini duyurmak için butona bas!",
            ),
            LargeCircleBtn(
              onTap: () {
                // just audio üzerinden ses çalınacak !!
              },
              imagePath: "assets/icon/whistle_green.png",
            ),
            // Figma Flutter Generator Rectangle22Widget - RECTANGLE
            Container(
              width: MediaQuery.of(context).size.width * .80,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom:8.0,left:8.0),
                child: SwitchListTile(
                  title: const Text('Düzenli olarak sinyal ver!.'),
                  value: _auto,
                  onChanged: (bool value) {
                    setState(() {
                      _auto = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
