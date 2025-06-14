import "package:flutter/material.dart";

class UIData {
  static final colors = _Colors();
  static final radius = _Radius();
  static final spaces = _Spaces();
  static final sizes = _Sizes();
  static final text = _Text();
}

class _Colors {
  final Color orange = const Color(0xFFE46826);
  final Color bckOrange = const Color(0xFFefe8dd);
  final Color green = const Color(0xFF2cb43c);
  final Color bckGreen = const Color(0xFF2cb43c).withOpacity(0.1);
  final Color darkGrey = const Color(0xFF978c86);
  final Color lightGrey = const Color(0xFFddd5cb);
  final Color red = const Color(0xFFf44336);
  final Color bckRed = const Color(0xFFf44336).withOpacity(0.1);
  final Color darkMarronTxt = const Color(0xFF3F3030);
  final Color lightMarronTxt = const Color(0xFF3F3030).withOpacity(0.5);
  final Color marron2 = const Color(0xFF953B20);
  final Color yellowBtn = const Color(0xFFff9100);
  final Color bckYellow = const Color(0xFFf9c845);
  final Color dark = const Color(0xFF3f3030);
  final Color bckDark = const Color(0xFF808080);
}

class _Radius {
  final double rounded16 = 16.0;
}

class _Spaces {
  final double small10 = 10.0;
  final double medium15 = 15.0;
  final double big20 = 20.0;
}

class _Sizes {
  final double vPadding16 = 16.0;
  final double hPadding10 = 10.0;
}

class _Text {
  final double title = 28.0;
  final double subTitle = 16.0;
  final double size18 = 18.0;
  final double size20 = 20.0;
  final double size12 = 12.0;
}
