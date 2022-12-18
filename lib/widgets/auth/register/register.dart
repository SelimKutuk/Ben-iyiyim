import 'package:depremzede/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class RegsiterPage extends StatelessWidget {
  RegsiterPage({Key? key}) : super(key: key);
  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final cityController = TextEditingController();
  final townController = TextEditingController();
  final districtController = TextEditingController();
  final streetController = TextEditingController();
  final phoneController = TextEditingController();
  void sendApi() async {}

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
              height: MediaQuery.of(context).size.height * .30,
              child: Center(
                child: Text(
                  "Kayıt Ol",
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
                            controller: idController),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'Ad',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: nameController),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'Soyad',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: surnameController),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'Şehir',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: cityController),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'İlçe',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: townController),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'Mahalle',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: districtController),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .32,
                                child: TextLoginWidget(
                                    hintText: 'Sokak',
                                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                                    controller: streetController),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextLoginWidget(
                              hintText: 'Telefon Numarası',
                              fillColor: Color.fromRGBO(217, 217, 217, 1),
                              controller: phoneController),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextLoginWidget(
                              hintText: 'Şifre',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              controller: passwordController),
                        ),
                        IdWidget(
                            id: "Kayıt Ol",
                            onTap: () async {
                              print(idController.text);
                              print(passwordController.text);
                              print(nameController.text);
                              print(surnameController.text);
                              print(cityController.text);
                              print(townController.text);
                              print(districtController.text);
                              print(streetController.text);
                              print(phoneController.text);
                              var url = Uri.http(
                                  '34.118.42.183', '/api/auth/register');
                              var response = await http.post(url, body: {
                                'tc': '$idController.text',
                                'name': '$nameController.text',
                                'surname': '$surnameController.text',
                                'password': '$passwordController.text',
                                'county': '$cityController.text',
                                'town': '$townController.text',
                                'district': '$districtController.text',
                                'street': '$streetController.text',
                                'deviceInfo': 'device_info',
                                'phoneNumber': '$phoneController.text',
                              });
                              print('Response status: ${response.statusCode}');
                              print('Response body: ${response.body}');
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Zaten bir hesabın var mı ?  ",
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
