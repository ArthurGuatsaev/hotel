part of '../router.dart';

class MyRouterDelegate extends RouterDelegate<MyNavigationState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyNavigationState> {
  static MyRouterDelegate instance = MyRouterDelegate._();
  Map<String, Object?> param = {};
  MyNavigationState? myNS;
  final mainNavigator = MainNavigator();
  @override
  final GlobalKey<NavigatorState> navigatorKey = MyNM.instance.key;
  MyRouterDelegate._();
  @override
  Widget build(BuildContext context) {
    return mainNavigator.rootNavigator(myNS, navigatorKey);
  }

  @override
  MyNavigationState? get currentConfiguration => myNS;
  @override
  Future<void> setNewRoutePath(MyNavigationState configuration) async {
    myNS = configuration;
    notifyListeners();
  }

  @override
  Future<void> setInitialRoutePath(MyNavigationState configuration) async {
    Future.sync(() => myNS = MyNavigationState.home());
    notifyListeners();
  }

  void notify() => notifyListeners();
}
