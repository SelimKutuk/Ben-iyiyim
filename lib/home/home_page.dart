import 'package:depremzede/widgets/bluetooth/bluetooth_page.dart';
import 'package:depremzede/widgets/family/family_page.dart';
import 'package:depremzede/widgets/map/map_page.dart';
import 'package:depremzede/widgets/notification/notification_page.dart';
import 'package:depremzede/widgets/whistle/whistle_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> pageList = [
    const BluetoothPage(),
    const FamilyPage(),
    const MapPage(),
    const WhistlePage(),
    const NotificationPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 0),
          backgroundColor: Color.fromRGBO(133, 209, 36, 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                  size: 30,
                  color: Colors.white,
                  AssetImage("assets/icon/ear.png")),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                  size: 30,
                  color: Colors.white,
                  AssetImage("assets/icon/family.png")),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                  size: 30,
                  color: Colors.white,
                  AssetImage("assets/icon/location.png")),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                  size: 30,
                  color: Colors.white,
                  AssetImage("assets/icon/whistle.png")),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                  size: 30,
                  color: Colors.white,
                  AssetImage("assets/icon/notification.png")),
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
      body: pageList.elementAt(_selectedIndex),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
