import 'package:depremzede/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:permission_handler/permission_handler.dart';

// running the constructor 
void main() async {

  // add the permission request 
  runApp(const DepremzedeApp());
  await Permission.location.request(); 
  await Permission.bluetooth.request();
}

class DepremzedeApp extends StatelessWidget {
  const DepremzedeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title : 'Depremzede',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color.fromRGBO(193, 193, 193, 1),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Color.fromRGBO(133, 209, 36, 1),
              ),
        ),
        initialRoute: '/',
        // configrations the route 
        routes: { 
          '/': (context) => HomePage(),
          
        },
      );     
  }
}