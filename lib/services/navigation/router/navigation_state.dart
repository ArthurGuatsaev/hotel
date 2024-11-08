part of '../router.dart';

class MyNavigationState extends ChangeNotifier {
  MyNavigationState.home({this.home = true});
  MyNavigationState.room({this.home = true, this.room = true});
  MyNavigationState.reserve(
      {this.home = true, this.room = true, this.reserve = true});

  bool home = false;
  bool room = false;
  bool reserve = false;
}
