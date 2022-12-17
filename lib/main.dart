import 'package:depremzede/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

// running the constructor 
void main() {
  runApp(const DepremzedeApp());
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
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Color.fromARGB(255, 60, 179, 113),
              ),
        ),
        initialRoute: '/',
        // configrations the route 
        routes: { 
          '/': (context) => MapPage(),
          
        },
      );     
  }
}