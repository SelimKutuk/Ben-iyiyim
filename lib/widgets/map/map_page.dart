import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController? mapController;
  Set<Marker> markers = Set();
  LatLng showLocation = LatLng(41.0192154, 28.8694627);
  LatLng afterLocation = LatLng(41.021391, 28.873543);
  LatLng stepLocation = LatLng(41.020364, 28.868272);
  LatLng loc1 = LatLng(41.18564937308635, 28.739826308632743);
  LatLng loc2 = LatLng(41.118357157574046, 29.00879856328422);
  LatLng loc3 = LatLng(41.04286992846018, 28.650257756433312);
  LatLng loc4 = LatLng(41.052194030329154, 29.065670562232665);
  LatLng loc5 = LatLng(41.00742629207542, 29.18065088994691);
  LatLng loc6 = LatLng(41.11742574501326, 28.77760156914211);
  // LatLng stepLocation = LatLng();

  @override
  void initState() {
    addMarkers();
    super.initState();
  }

  addMarkers() async {
    BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      "assets/icon/dot_orange.png",
    );
    markers.add(Marker(
      //add marker on google map
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: InfoWindow(
        //popup info
        title: 'Konumunuz ',
        snippet: 'Buradasınız!',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(afterLocation.toString()),
      position: afterLocation, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina ',
        snippet: 'Gülseven Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc1.toString()),
      position: loc1, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Çiçek Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc2.toString()),
      position: loc2, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Beyaz Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc3.toString()),
      position: loc3, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Gülseven Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc4.toString()),
      position: loc4, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Su Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc5.toString()),
      position: loc5, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Aygül Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(loc6.toString()),
      position: loc6, //position of marker
      rotation: -45,
      infoWindow: InfoWindow(
        //popup info
        title: 'Hasarlı Bina',
        snippet: 'Kaya Apt.',
      ),
      icon: markerbitmap, //Icon for Marker
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Istanbul",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/icon/account_ico.png"),
              size: 27,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.info_outline,
              size: 30,
            ),
            onPressed: () {
              print("Run the object");
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(20),
                            topRight: const Radius.circular(20))),
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        StatusWidget(
                          icon: Icons.corporate_fare,
                          primaryColor: Colors.red,
                          title: "Yıkılan Binalar",
                          status: "0",
                        ),
                        StatusWidget(
                          icon: Icons.corporate_fare,
                          primaryColor: Colors.orange,
                          title: "Hasarlı Binalar",
                          status: "8",
                        ),
                        StatusWidget(
                          icon: Icons.person,
                          primaryColor: Colors.red, 
                          title: "Yaralı İnsanlar",
                          status: "152",
                        ),
                        StatusWidget(
                          icon: Icons.people_rounded,
                          primaryColor: Colors.green,
                          title: "Aile Durumunuz",
                          status: "Güvende",
                        ),
                        
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GoogleMap(
          //Map widget from google_maps_flutter package
          zoomGesturesEnabled: true, //enable Zoom in, out on map
          initialCameraPosition: CameraPosition(
            //innital position in map
            target: showLocation, //initial position
            zoom: 10.0, //initial zoom level
          ),
          markers: markers, //markers to show on map
          mapType: MapType.normal, //map type
          onMapCreated: (controller) {
            //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  Color primaryColor;
  String title;
  String status;
  IconData icon;
  StatusWidget({
    required this.primaryColor,
    required this.title,
    required this.status,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 223, 222, 222)),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Icon(
            icon,
            color: primaryColor,
            size: 100,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            status,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
