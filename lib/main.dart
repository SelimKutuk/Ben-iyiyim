import 'dart:convert';
import 'package:depremzede/home/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart'; 
//background fetch api
// arkaplan işlemi kandilli apisini dinleme anlık konumu rest edip kıyaslamaya yarar
// @pragma('vm:entry-point')
// void backgroundFetchHeadlessTask(HeadlessTask task) async {
//   String taskId = task.taskId;
//   bool isTimeout = task.timeout;
//   if (isTimeout) {
//     // This task has exceeded its allowed running-time.
//     // You must stop what you're doing and immediately .finish(taskId)
//     print("[BackgroundFetch] Headless task timed-out: $taskId");
//     BackgroundFetch.finish(taskId);
//     return;
//   }
//   print('[BackgroundFetch] Headless event received.');
//   // Do your work here...
//   BackgroundFetch.finish(taskId);
// }

// running the constructor


void main() async {
  // add the permission request
  runApp( DepremzedeApp());
  await Permission.location.request();
  await Permission.bluetooth.request();
  await Permission.accessMediaLocation.request();
  await Permission.manageExternalStorage.request();
  await Permission.storage.request();
 // BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);

}

class DepremzedeApp extends StatelessWidget {
   DepremzedeApp({Key? key}) : super(key: key);
      final _connect = GetConnect();

    @override
  void _sendGetRequest() async {
    //connecting the api 
    final response =
        await _connect.get('https://api.orhanaydogdu.com.tr/deprem/live.php?limit=100');

    if (kDebugMode) {
      print(response.body);
    }
    final decodeJson = jsonDecode(response.body); 
    if (decodeJson['mag'] > 3.8) { 
      //show notification 
      // show notification 
    
    }
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Depremzede',
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
