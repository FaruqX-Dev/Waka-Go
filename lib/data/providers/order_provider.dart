
import 'package:flutter/material.dart';
import 'package:waka_go/models/rideModels.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_provider.g.dart';

@riverpod
class OrderNotifier extends _$OrderNotifier<List<Ridemodels>>{
 //Initstate
 @override
 List<Ridemodels> build(){
  return const[

  ];
 }
 void addOrders(Ridemodels rides){
  if(!state.contains(rides)){
    state = {...state, rides};
  }
 }
}