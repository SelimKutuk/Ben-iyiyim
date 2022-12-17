import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  // ilk uygulama açılışında kullanıcıyı karşılayacak sayfa 

  @override
  Widget build(BuildContext context) {
    return Container(
       child:  Center(child: Text("Welcome page"))
    );
  }
}
