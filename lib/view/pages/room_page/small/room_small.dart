import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/room_model/room_model.dart';
import 'package:hotel_example/view/widgets/appbar/hotel_appbar.dart';
import '../widgets/room_item/room.dart';

class RoomSmall extends StatelessWidget {
  final List<RoomModel> rooms;
  final String hotelName;
  const RoomSmall({super.key, required this.rooms, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        HotelAppbar(text: hotelName),
        SliverList.builder(
            itemCount: rooms.length,
            itemBuilder: (context, index) {
              final room = rooms[index];
              return RoomItem(room: room);
            })
      ]),
    );
  }
}
