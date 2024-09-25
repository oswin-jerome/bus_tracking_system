import 'package:bus_tracker_client/components/bus_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class BusInfo extends StatefulWidget {
  final bus;
  const BusInfo({super.key, this.bus});

  @override
  State<BusInfo> createState() => _BusInfoState();
}

class _BusInfoState extends State<BusInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: const Size(0, 150),
            child: Container(
              // height: 150,
              // color: Colors.deepOrange,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BusCard(
                    bus: widget.bus,
                  ),
                ),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (bc) {
                var selected = "5";

                return Container(
                    height: 300,
                    padding: EdgeInsets.all(8),
                    child: StatefulBuilder(builder: (bb, setStates) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Add alarm ",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          DropdownButton(
                            // i: selected,
                            value: selected,
                            items: [
                              DropdownMenuItem(
                                child: Text("Before 5 Mins"),
                                value: "5",
                              ),
                              DropdownMenuItem(
                                child: Text("Before 10 Mins"),
                                value: "10",
                              ),
                              DropdownMenuItem(
                                child: Text("Before 15 Mins"),
                                value: "15",
                              ),
                            ],
                            onChanged: (e) {
                              setStates(() {
                                selected = e ?? "5";
                              });
                            },
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).primaryColor),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Alarm Added"),
                                ),
                              );

                              Navigator.pop(context);
                            },
                            child: const Text("Add Alarm"),
                          )
                        ],
                      );
                    }));
              });
        },
        child: Icon(Icons.notification_add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FlutterMap(
        mapController: MapController(),
        options: MapOptions(initialCenter: LatLng(8.190196, 77.403936)),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',

            // Plenty of other options available!
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(8.190196, 77.403936),
                width: 20,
                height: 20,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
