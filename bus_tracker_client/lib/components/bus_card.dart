import 'package:bus_tracker_client/screens/bus_info.dart';
import 'package:flutter/material.dart';

class BusCard extends StatelessWidget {
  final bus;
  const BusCard({super.key, this.bus});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => BusInfo(
                      bus: bus,
                    )));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bus['busNo'],
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.deepOrange, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Arriving in 5 mins",
                    style: TextStyle(color: Colors.green.shade700),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "From",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        bus['from'],
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        bus['start'],
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "To",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        bus['to'],
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        bus['end'],
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
