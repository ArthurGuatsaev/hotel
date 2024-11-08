import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/pages/hotel_page/hotel_page.dart';
import 'package:hotel_example/view/pages/reserv_page/reserv_page.dart';
import 'package:hotel_example/view/pages/room_page/room_page.dart';

import '../../router.dart';

class MainNavigator {
  Navigator rootNavigator(
      MyNavigationState? myNS, GlobalKey<NavigatorState> key) {
    final hotel = MyRouterDelegate.instance.param['hotelName'] as HotelModel?;
    final roomId = MyRouterDelegate.instance.param['roomId'] as int?;
    return Navigator(
      key: key,
      pages: [
        if (myNS == null) const MaterialPage(child: Scaffold()),
        if (myNS?.home == true)
          const MaterialPage(child: HotelPage(), name: 'hotel'),
        if (myNS?.room == true)
          MaterialPage(child: RoomPage(hotel: hotel), name: 'room'),
        if (myNS?.reserve == true)
          MaterialPage(
              child: ReservePage(hotel: hotel, roomId: roomId),
              name: 'reserve'),
      ],
      onDidRemovePage: (page) {},
    );
  }
}
