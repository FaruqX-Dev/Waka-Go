// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:waka_go/theme/theme_mode.dart';

class Ridemodels {
  final String driverName;
  final double distanceKm;
  final String eta;
  final String destination;
  final String driverImage;
  final double driverRating;
  final String carType;

  const Ridemodels({
    required this.driverName,
    required this.distanceKm,
    required this.eta,
    required this.destination,
    required this.driverImage,
    required this.driverRating,
    required this.carType,
  });
}

//List of nearby rides
final List<Ridemodels> rideList = const [
  Ridemodels(
    driverName: 'Alex Odunbarin',
    distanceKm: 2.5,
    eta: '4 min',
    destination: 'Ikeja',
    driverImage: 'assets/images/male_pfp.jpg',
    driverRating: 4.6,
    carType: 'Toyota',
  ),
  Ridemodels(
    driverName: 'Wale Osin',
    distanceKm: 1.2,
    eta: '2 min',
    destination: 'Apapa',
    driverImage: 'assets/images/male_pfp.jpg',
    driverRating: 4.0,
    carType: 'Lexus',
  ),
  Ridemodels(
    driverName: 'Chris Awele',
    distanceKm: 5.8,
    eta: '1 min',
    destination: 'Iyana-Ipaja',
    driverImage: 'assets/images/female_pfp.jpg',
    driverRating: 3.8,
    carType: 'Range Rover',
  ),
  Ridemodels(
    driverName: 'Ademide Oyebade',
    distanceKm: 3.8,
    eta: '40 min',
    destination: 'Ayobo',
    driverImage: 'assets/images/male_pfp.jpg',
    driverRating: 4.9,
    carType: 'Mercedes Benz',
  ),
];

final rideListsProvider = Provider((ref) {
  return rideList;
});

