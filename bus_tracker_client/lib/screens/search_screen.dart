import 'package:bus_tracker_client/components/bus_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String from = "";
  String to = "";
  List busses = [
    {
      "from": "Nagercoil",
      "to": "Marthandam",
      "start": "10:30 PM",
      "end": "12:30 PM",
      "busNo": "13 B"
    },
    {
      "from": "Nagercoil",
      "to": "Marthandam",
      "start": "01:30 PM",
      "end": "02:30 PM",
      "busNo": "133 A"
    },
    {
      "from": "Nagercoil",
      "to": "Chennai",
      "start": "10:30 AM",
      "end": "12:30 PM",
      "busNo": "72 B"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 300),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Positioned(
              top: 100,
              bottom: 0,
              left: 16,
              right: 16,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Search your Bus",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          labelText: "From",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(8),
                        ),
                        onChanged: (value) {
                          setState(() {
                            from = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          labelText: "To",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(8),
                        ),
                        onChanged: (value) {
                          setState(() {
                            to = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor),
                        onPressed: () {},
                        child: const Text("Search"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: busses.length,
        itemBuilder: (bc, i) {
          return BusCard(
            bus: busses[i],
          );
        },
      ),
    );
  }
}
