// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Ridemodels {
  final String driverName;
  final double distanceKm;
  final String eta;
  final String destination;

  const Ridemodels({
    required this.driverName,
    required this.distanceKm,
    required this.eta,
    required this.destination
  });
}

//List of nearby rides
  final List<Ridemodels> rideList = const [
    Ridemodels(driverName: 'Alex', distanceKm: 2.5, eta: '4 min', destination: 'Ikeja'),
    Ridemodels(driverName: 'Wale', distanceKm: 1.2, eta: '2 min',destination: 'Apapa'),
    Ridemodels(driverName: 'Chris', distanceKm: 5.8, eta: '1 min', destination: 'Iyana-Ipaja'),
     Ridemodels(driverName: 'Ade', distanceKm: 3.8, eta: '40 min',destination: 'Ayobo'),
  ];

final rideListsProvider =Provider((ref){
  return rideList;
});

















class RideModelWidget extends StatelessWidget {
  final Ridemodels ride;

  const RideModelWidget({super.key, required this.ride});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.black45
              : Colors.white60,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Row(
          children: [
            const Icon(Icons.directions_car, color: Colors.blue),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${ride.distanceKm.toStringAsFixed(1)} km away',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('ETA: ${ride.eta}'),
                Text('Driver: ${ride.driverName}'),
                Text('Destination: ${ride.destination}')
              ],
            ),
            
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_circle_right_outlined),
                ],
                 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
