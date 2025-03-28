import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

import 'services/initialize/custom/initialize.dart';
import 'services/initialize/custom/view/error_app.dart';

void main() async {
  runZonedGuarded(
    () async {
      final initializationProgress =
          ValueNotifier<({int progress, Map<String, String> message})>(
        (progress: 0, message: {'': ''}),
      );
      runApp(InitializationSplashScreen(progress: initializationProgress));
      initializeApp(
        onProgress: (progress, message) => initializationProgress.value =
            (message: message, progress: progress),
        onSuccess: (dependencies) {
          runApp(
            InheritedDependencies(
              dependencies: dependencies,
              child: const MyHomeApp(),
            ),
          );
        },
        onError: (error, stackTrace) {
          runApp(ErrorApp(error: error));
        },
      ).ignore();
    },
    (error, stack) {
      log('main handler error --> $error ${stack.toString()}');
    },
  );
}
