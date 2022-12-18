import 'package:depremzede/ui/ui.dart';
import 'package:flutter/material.dart';
class BluetoothPage extends StatefulWidget {
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  State<BluetoothPage> createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
// check the bluetooth operationns 
  @override
  Widget build(BuildContext context) {
     bool _auto = false;
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              text: "Yakınlardaysen bu butona tıkla",
            ),
            LargeCircleBtn(
              onTap: () {
                // just audio üzerinden ses çalınacak !!
              },
              imagePath: "assets/icon/ear_green.png",
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
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.green,
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


