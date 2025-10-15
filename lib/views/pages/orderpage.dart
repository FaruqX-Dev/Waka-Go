import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:waka_go/data/providers/order_provider.dart';

class Orderpage  extends ConsumerStatefulWidget {
  const Orderpage ({super.key});

  @override
  ConsumerState<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends ConsumerState<Orderpage> {
  @override
  Widget build(BuildContext context) {
    final ridesOrdered = ref.watch(orderProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
        children: [
          Text('Track Order',style: TextStyle(fontSize: 35),),
        ],
       ),
     ),
    );
  }
}