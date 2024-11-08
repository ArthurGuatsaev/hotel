part of '../initialize.dart';

Future<Dependencies> $initializeDependencies(
    {Function(int progress, Map<String, String> message)? onProgress,
    bool? isTesting}) async {
  final dependencies = MutableDependencies();
  final totalStaps = _initializationSteps.length;
  var currentStep = 0;
  for (final step in _initializationSteps.entries) {
    currentStep++;
    final percent = (currentStep * 100 ~/ totalStaps).clamp(0, 100);
    // onProgress?.call(percent, step.key);
    await step.value(dependencies, isTesting, onProgress);
    log('initialization: $currentStep/$totalStaps ($percent) | ${step.key}');
  }
  return dependencies.freeze();
}

typedef _InitializationStep = FutureOr<void> Function(
  MutableDependencies dependencies,
  bool? isT,
  dynamic Function(int, Map<String, String>)? onProgress,
);
final Map<String, _InitializationStep> _initializationSteps =
    <String, _InitializationStep>{
  'Hotel initialization': (dependencies, isT, onProgress) async {
    final hotelR = HotelRepository();
    await hotelR.getHotels();
    await hotelR.getRooms();
    dependencies.hotelR = hotelR;
  },
  'Reserved initialization': (dependencies, isT, onProgress) async {
    final reservR = ReservedRepository();
    await reservR.getReserved();
    dependencies.reservedR = reservR;
  },
  'routing initialization': (dependencies, isT, onProgress) {},
};
