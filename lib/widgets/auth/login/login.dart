import 'package:depremzede/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          image: AssetImage("assets/images/auth_page.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .40,
              child: Center(
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.height * .80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        TextLoginWidget(
                            hintText: 'Tc Kimlik Numarası ',
                            fillColor: Color.fromRGBO(217, 217, 217, 1),
                            controller: emailController),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextLoginWidget(
                              hintText: 'Şifre',
                              fillColor: Color.fromRGBO(217, 217, 217, 1),
                              controller: passwordController),
                        ),
                        IdWidget(id: "Giriş Yap", onTap: () {}),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Bir hesabın yok mu? ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
