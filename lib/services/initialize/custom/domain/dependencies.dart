part of '../initialize.dart';

abstract interface class Dependencies {
  abstract final BaseHotelRepository hotelR;
  abstract final BaseReservedRepository reservedR;

  final Map<String, Object?> context = {};
}

class MutableDependencies implements Dependencies {
  @override
  final Map<String, Object?> context = {};
  @override
  late BaseHotelRepository hotelR;
  @override
  late BaseReservedRepository reservedR;

  Dependencies freeze() => UnmutableDependencies(
        context: context,
        hotelR: hotelR,
        reservedR: reservedR,
      );
}

final class UnmutableDependencies implements Dependencies {
  @override
  final BaseHotelRepository hotelR;
  @override
  final BaseReservedRepository reservedR;

  @override
  final Map<String, Object?> context;
  const UnmutableDependencies({
    required this.context,
    required this.hotelR,
    required this.reservedR,
  });
}

class InheritedDependencies extends InheritedWidget {
  final Dependencies dependencies;
  const InheritedDependencies({
    required super.child,
    super.key,
    required this.dependencies,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Dependencies of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedDependencies>()!
      .dependencies;
}
