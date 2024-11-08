part of '../router.dart';

class MyRouterInformationParser
    extends RouteInformationParser<MyNavigationState> {
  @override
  Future<MyNavigationState> parseRouteInformation(
      RouteInformation routeInformation) async {
    final url = routeInformation.uri;
    if (url.pathSegments.isEmpty) {
      return MyNavigationState.home();
    }

    switch (url.pathSegments.last) {
      case 'home':
        return MyNavigationState.home();

      default:
        return MyNavigationState.home();
    }
  }

  @override
  RouteInformation? restoreRouteInformation(MyNavigationState configuration) {
    if (configuration.home) {
      return RouteInformation(
        uri: Uri.parse('/home'),
      );
    }

    return RouteInformation(uri: Uri.parse('/home'));
  }
}
