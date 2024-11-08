part of 'reserve_bloc.dart';

class ReserveEvent {}

class GetReservedEvent extends ReserveEvent {}

class AddTouristEvent extends ReserveEvent {}

class DeleteTouristEvent extends ReserveEvent {}

class SendOrderEvent extends ReserveEvent {
  final TouristModel? tourist;
  final CustomerModel? customer;
  SendOrderEvent({this.tourist, this.customer});
}

class StartReservedEvent extends ReserveEvent {
  final int id;

  StartReservedEvent({required this.id});
}
