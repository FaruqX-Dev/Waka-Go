// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:waka_go/views/widgets/navbarwidget.dart';
import 'package:waka_go/models/rideModels.dart';
import 'package:waka_go/views/pages/settings_page.dart';
import 'package:waka_go/views/widgets/ride_model_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rides = ref.read(rideListsProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
   
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search destination....',
                hintStyle: TextStyle(color: colorScheme.inversePrimary),
                prefixIcon: Icon(Icons.search, color:colorScheme.inversePrimary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  
                ),
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              splashColor: colorScheme.primary,
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text(
                    "Nearby Rides",
                    style: textTheme.titleLarge,
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: rides.length,
                itemBuilder: (context, index) {
                  final rideList = rides[index];
                  return RideModelWidget(ride: rideList);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
