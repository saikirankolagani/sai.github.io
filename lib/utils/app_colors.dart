import 'package:flutter/material.dart';

class AppColors{
    static Color blueColor = HexColorConverter.fromHex('#3078A6');
    static Color yellowColor = HexColorConverter.fromHex('#FCB800');
    static Color greenColor = HexColorConverter.fromHex('#35AF5E');
}

class HexColorConverter{
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}