part of '../router.dart';

class MyNM {
  MyNM._();
  static MyNM instance = MyNM._();
  final key = GlobalKey<NavigatorState>();
  static final MyRouterDelegate delegate = MyRouterDelegate.instance;
  NavigatorState? get nav => key.currentState;
  List<String> routing = [];
  void addRoute(String name) {
    routing.add(name);
    log("current routing: $routing");
  }

  void removeRoute() {
    routing.removeLast();
    log("current routing: $routing");
  }

  Future<void> comeBack() async {
    routing.removeLast();
    nav?.pop();
  }

  void pushHome() {
    addRoute('home');
    delegate.myNS = MyNavigationState.home();
    delegate.notify();
  }

  void pushRoom(HotelModel hotel) {
    addRoute('room');
    delegate.param['hotelName'] = hotel;
    delegate.myNS = MyNavigationState.room();
    delegate.notify();
  }

  void pushReseve(int id) {
    addRoute('reseve');
    delegate.param['roomId'] = id;
    delegate.myNS = MyNavigationState.reserve();
    delegate.notify();
  }
}
