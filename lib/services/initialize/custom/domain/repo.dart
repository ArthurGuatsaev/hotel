part of '../initialize.dart';

Future<Dependencies>? _$initializeApp;
Future<Dependencies> initializeApp({
  required Function(int progress, Map<String, String> message)? onProgress,
  required Function(Dependencies dependencies)? onSuccess,
  required Function(Object error, StackTrace stackTrace)? onError,
  bool? isTesting,
}) {
  return _$initializeApp ??= Future<Dependencies>(() async {
    late WidgetsBinding buinding;
    final stopWatch = Stopwatch()..start();
    try {
      buinding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();
      // await EasyLocalization.ensureInitialized();

      final dependencies = await $initializeDependencies(
              onProgress: onProgress, isTesting: isTesting)
          .timeout(const Duration(minutes: 5));
      await onSuccess?.call(dependencies);
      return dependencies;
    } on Object catch (error, stackTrace) {
      log('initialize error: $error', stackTrace: stackTrace);
      onError?.call(error, stackTrace);
      rethrow;
    } finally {
      stopWatch.stop();
      buinding.addPostFrameCallback((_) {
        buinding.allowFirstFrame();
      });
    }
  });
}

extension BuildContextExt on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  Dependencies? get myDependencies =>
      dependOnInheritedWidgetOfExactType<InheritedDependencies>()?.dependencies;
}
