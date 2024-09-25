import 'package:bus_tracker/screens/trip_progress.dart';
import 'package:flutter/material.dart';

class TripSelectScreen extends StatelessWidget {
  const TripSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 160),
        child: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("Welcome, Driver 1"),
          centerTitle: false,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownMenu(
                  helperText: "Select your trip",
                  menuStyle: MenuStyle(
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.white;
                      },
                    ),
                  ),
                  label: const Text("Trip"),
                  width: MediaQuery.of(context).size.width,
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: "313 B", label: "313 B"),
                    DropdownMenuEntry(value: "19 C", label: "19 C"),
                    DropdownMenuEntry(value: "33 F", label: "33 F"),
                  ]),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => TripProgressPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(23),
                backgroundColor: Colors.deepOrange,
                shape: const LinearBorder(),
              ),
              child: const Text("Start Trip"),
            )
          ],
        ),
      ),
    );
  }
}
