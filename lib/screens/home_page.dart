import 'package:flutter/material.dart';
import 'package:travelbudget/models/trip.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Trip> tripsList = [
    Trip("New York", DateTime.now(), DateTime.now(), 200, 'Car'),
    Trip("Boston", DateTime.now(), DateTime.now(), 200, 'Car'),
    Trip("Washington D.C.", DateTime.now(), DateTime.now(), 200, 'Car'),
    Trip("Austin", DateTime.now(), DateTime.now(), 200, 'Car'),
  ];

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        itemCount: tripsList.length,
        itemBuilder: (context, index) {
          return Container(
            height: _height * 0.2,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tripsList[index].title),
                    Text(
                        "${DateFormat('dd/MM/yyyy').format(tripsList[index].startDate)} - "
                        "${DateFormat('dd/MM/yyyy').format(tripsList[index].endDate)}"),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('\$${tripsList[index].budget}'),
                        Icon(Icons.directions_car),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
