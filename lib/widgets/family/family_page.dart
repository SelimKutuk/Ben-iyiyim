import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

// aile ve yakınların durumunu gösterecek ekran
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/galata_tower.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ID: AkjdKDkj287Jjk",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icon/logout_ico.png",
                            width: 50,
                            height: 50,
                          ))
                    ],
                  ),
                  Spacer(),
                  //home icon
                  Container(
                      width: 136,
                      height: 136,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/icon/large_account.png'),
                            fit: BoxFit.cover),
                      ))
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .57,
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IdWidget(
                      id: "ID KOPYALA!",
                      onTap: () {
                        // PRİNT TAP
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.green,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.0),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Yakınınını eklemek için ID'sini aratın.",
                          fillColor: Colors.white70),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(30),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        FamilyStatsWidget(
                          statusColor: Color.fromRGBO(133, 209, 37, 1),
                          statusName: "Durumu İyi",
                          name: "Sena Yılmaz",
                        ),
                        FamilyStatsWidget(
                          statusColor: Color.fromRGBO(133, 209, 37, 1),
                          statusName: "Durumu İyi",
                          name: "Burak Yılmaz",
                        ),
                        FamilyStatsWidget(
                          statusColor: Color.fromARGB(255, 182, 11, 11),
                          statusName: "Enkazda",
                          name: "Caner Bulut",
                        ),
                        FamilyStatsWidget(
                          statusColor: Color.fromRGBO(133, 209, 37, 1),
                          statusName: "Durumu İyi",
                          name: "Emre Bulut",
                        ),
                      ],
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

class FamilyStatsWidget extends StatelessWidget {
  String name;
  String statusName;
  Color statusColor;
  FamilyStatsWidget({
    required this.name,
    required this.statusName,
    required this.statusColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(255, 255, 255, 0.7799999713897705),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 74, 220, 79),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/icon/large_account.png"),
                    fit: BoxFit.cover)),
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            width: 89,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: statusColor,
            ),
            child: Center(
                child: Text(
              statusName,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}

class IdWidget extends StatelessWidget {
  String id;
  GestureTapCallback onTap;
  IdWidget({
    required this.id,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .45,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(133, 209, 37, 1),
        ),
        child: Center(
            child: Text(
          id,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}
