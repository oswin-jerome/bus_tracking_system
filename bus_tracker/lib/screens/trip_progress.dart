import 'package:flutter/material.dart';

class TripProgressPage extends StatelessWidget {
  const TripProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Trip in Progress",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(23),
                    backgroundColor: Colors.white,
                    shape: const LinearBorder(),
                    foregroundColor: Theme.of(context).primaryColor),
                child: const Text("End Trip"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
