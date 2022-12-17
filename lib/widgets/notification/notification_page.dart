import 'package:flutter/material.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  // deprem anında gönderilen bildirimlerin listelendiği kısım 
  @override
  Widget build(BuildContext context) {
      return Container(
         child:  Center(child: Text("Notification page"))
      );
  }
}