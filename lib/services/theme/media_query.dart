import 'package:flutter/material.dart';

MediaQuery mediaQueryGenerator(Widget child, MediaQueryData initialMedia) {
  // final padding = math.max((initialMedia.size.width - 450) / 2, 0).toDouble();
  // final width = math.min(initialMedia.size.width, 450).toDouble();
  // final height = math.min(initialMedia.size.height, 1000).toDouble();

  return MediaQuery(data: initialMedia.copyWith(), child: child);
}
