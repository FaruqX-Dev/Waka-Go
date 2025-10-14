// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newerapp/views/widgets/navbarwidget.dart';
import 'package:newerapp/models/rideModels.dart';
import 'package:newerapp/views/pages/settings_page.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});




  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final rides = ref.read(rideListsProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search destination....',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            InkWell(
                      splashColor: Colors.amber,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/map.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
            SizedBox(height: 20,),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0,bottom: 10),
                     child: Text(
                      "Nearby Rides",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
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
                  return RideModelWidget(ride: rideList,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
