import 'package:flutter/material.dart';
import 'package:waka_go/models/rideModels.dart';

class RideModelWidget extends StatelessWidget {
  final Ridemodels ride;

  const RideModelWidget({super.key, required this.ride});

  @override
  Widget build(BuildContext context) {
     final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      splashColor: colorScheme.inversePrimary,
      onTap: () {
        confirmOrder(context);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Row(
          children: [
            Icon(Icons.directions_car, color: colorScheme.tertiary,),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ETA: ${ride.eta}'),
                Text('Driver: ${ride.driverName}'),
                Text('Destination: ${ride.destination}'),
              ],
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.arrow_circle_right_outlined,color: colorScheme.tertiary,)],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void confirmOrder(BuildContext context) {
     final colorScheme = Theme.of(context).colorScheme;
     final textTheme = Theme.of(context).textTheme;
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [BoxShadow(
              color: Colors.black.withValues(alpha:  0.3),
              blurRadius: 12,
              offset: Offset(0, -4)
            )]
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Center(
                child: Container(
                  height: 5,
                  width: 50,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: colorScheme.inversePrimary.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Confirm Ride Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ), // Rounded corners for the image
                      child: Image.asset(
                        ride.driverImage,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Text(
                'Driver Information',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.inversePrimary,
                ),
              ),
                SizedBox(height: 15),
                 Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Driver: ${ride.driverName}',
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                          )),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.amber.shade400, size: 18),
                          const SizedBox(width: 5),
                          Text('${ride.driverRating}',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurface,
                              )),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text('Car Type: ${ride.carType}',
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                          )),
                    ],
                  ),
                ),
              ),

                Spacer(),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('Confirm Ride'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.tertiary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: (){},
                )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
