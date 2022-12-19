import 'package:depremzede/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BluetoothPage extends StatefulWidget {
  BluetoothPage({Key? key}) : super(key: key);
  @override
  State<BluetoothPage> createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  @override
  void startBlue() {
     var adress = "20:53:7F:E5:6F:B6"; 
    flutterBlue.startScan(timeout: Duration(seconds: 10));

    Get.snackbar(
              "Tanımlama Başlatıldı",
               "Kişiler Aranıyor.... ",
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Color.fromARGB(255, 14, 241, 22),   
               );
   
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        print('${r.device.name} found! rssi: ${r.rssi}');
        if(r.device.id == adress) { 
            Get.snackbar(
              "Cihaz Bulundu",
               "Eşleşme Bilgileri : Yasin Çimen ",
               icon: Icon(Icons.person, color: Colors.white),
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Colors.green, 
                 
               );
        }
      }
    });
    
  }

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
                startBlue(); 
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
                padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
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
