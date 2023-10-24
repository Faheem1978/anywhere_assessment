import 'package:flutter/widgets.dart';

extension ScreenSizeExtension on BuildContext {
  double get desktopWidth => 512.0;

  // Dimensions
  double get screenHeight {
    return MediaQuery.of(this).size.height;
  }

  double screenHeightPercentage(double percentage) {
    return screenHeight * (percentage / 100);
  }

  double get screenWidth {
    return MediaQuery.of(this).size.width;
  }

  double screenWidthPercentage(double percentage) {
    return screenWidth * (percentage / 100);
  }

  double get topSafeAreaSize {
    return MediaQuery.of(this).padding.top;
  }

  double get bottomSafeAreaSize {
    return MediaQuery.of(this).padding.bottom;
  }

  bool get isDesktop {
    return screenWidth > desktopWidth;
  }

  bool get isPortrait {
    return MediaQuery.of(this).orientation == Orientation.portrait;
  }

  bool get isLandscape {
    return MediaQuery.of(this).orientation == Orientation.landscape;
  }
}
