import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  // deprem anında gönderilen bildirimlerin listelendiği kısım
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "İstanbul",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage:
                          AssetImage("assets/icon/account_logo.png"),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .30,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Center(
                          child: Text(
                        "Hasarlı",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .30,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            Color.fromRGBO(255, 255, 255, 0.5600000023841858),
                      ),
                      child: Center(
                          child: Text(
                        "Yıkılan",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .30,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            Color.fromRGBO(255, 255, 255, 0.5600000023841858),
                      ),
                      child: Center(
                          child: Text(
                        "Toplanma",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .70,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NotContain(
                      adress: 'Sevgi Cad./İnci Sok./No 5',
                      imagePath: 'assets/images/hasarlı_1.png',
                      name: 'Gülseven Apartmanı',
                      statusColor: Colors.orange,
                    ),
                  ), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NotContain(
                      adress: 'Sevgi Cad./İnci Sok./No 5',
                      imagePath: 'assets/images/hasarlı_1.png',
                      name: 'Çiçek Apartmanı',
                      statusColor: Colors.orange,
                  ),
                    ), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NotContain(
                      adress: 'Sevgi Cad./İnci Sok./No 5',
                      imagePath: 'assets/images/hasarlı_1.png',
                      name: 'Gülseven Apartmanı',
                      statusColor: Colors.orange,
                  ),
                    ), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NotContain(
                      adress: 'Sevgi Cad./İnci Sok./No 5',
                      imagePath: 'assets/images/hasarlı_1.png',
                      name: 'Gülseven Apartmanı',
                      statusColor: Colors.orange,
                  ),
                    ), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NotContain(
                      adress: 'Sevgi Cad./İnci Sok./No 5',
                      imagePath: 'assets/images/hasarlı_1.png',
                      name: 'Gülseven Apartmanı',
                      statusColor: Colors.orange,
                  ),
                    ), 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotContain extends StatelessWidget {
  String name;
  String adress;
  String imagePath;
  Color statusColor;
  NotContain({
    required this.name,
    required this.adress,
    required this.imagePath,
    required this.statusColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(255, 255, 255, 0.7799999713897705),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  adress,
                  style: TextStyle(fontSize: 12),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: statusColor),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(imagePath),
              )),
            )
          ],
        ),
      ),
    );
  }
}
