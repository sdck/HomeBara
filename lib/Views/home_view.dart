import 'package:barahome/Themes/themes.dart';
import 'package:barahome/Views/widgets/round_yellow_icon.dart';
import 'package:barahome/Views/widgets/square_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // Determining the screen width & height
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // Initial location of the Map view
    CameraPosition initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
    // For controlling the view of the Map
    GoogleMapController mapController;
    //initialize geolocator
    final Geolocator geolocator = Geolocator();
    //Store current position
    Position currentPosition;

    // Method for retrieving the current location
    _getCurrentLocation() async {
      await geolocator
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((Position position) async {
        setState(() {
          // Store the position in the variable
          currentPosition = position;

          print('CURRENT POS: $currentPosition');

          // For moving the camera to current location
          mapController.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(position.latitude, position.longitude),
                zoom: 18.0,
              ),
            ),
          );
        });
      }).catchError((e) {
        print(e);
      });
    }

    return Container(
      height: height,
      width: width,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // affichage de la carte
            GoogleMap(
              initialCameraPosition: initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
            //zoom in zoum out
            Positioned(
              left: 15.0,
              top: height * 0.51,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: colorYellow, // inkwell color
                          child: SizedBox(
                            width: 36,
                            height: 36,
                            child: Icon(Icons.add),
                          ),
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.zoomIn(),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Material(
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: colorYellow, // inkwell color
                          child: SizedBox(
                            width: 36,
                            height: 36,
                            child: Icon(Icons.remove),
                          ),
                          onTap: () {
                            // Zoom Out action
                            mapController.animateCamera(
                              CameraUpdate.zoomOut(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //current location button
            Positioned(
              right: 10.0,
              bottom: height * 0.31,
              child: ClipOval(
                child: Material(
                  color: Colors.white, // button color
                  child: InkWell(
                    splashColor: Colors.orange, // inkwell color
                    child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(Icons.my_location),
                    ),
                    onTap: _getCurrentLocation,
                  ),
                ),
              ),
            ),
            //bottom card
            Positioned(
              bottom: 0.0,
              child: Container(
                color: Colors.white,
                width: width,
                height: height * 0.3,
                child: Material(
                  child: GestureDetector(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 5.0,
                          width: 60.0,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                        ),
                        // rechercher
                        SquareInputField(
                            icon: Icons.search,
                            hintText: "Plombier, menusier..."),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Les plus recherchés...",
                          style: TextTitle2(Colors.black87),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundYellowIcon(
                                iconUrl:
                                    "assets/images/icons/icon_map_painter.svg",
                                onTap: null),
                            RoundYellowIcon(
                                iconUrl: "assets/images/icons/icon_shower.svg",
                                onTap: null),
                            RoundYellowIcon(
                                iconUrl: "assets/images/icons/icon_hammer.svg",
                                onTap: null),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
