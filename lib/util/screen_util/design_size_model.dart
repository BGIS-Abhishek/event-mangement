part of 'screen_util.dart';

class DesignSize {
  double ? _height;
  double ? _width;
  DesignSize({ required double height,  required double width}) {
    _height = height;
    _width = width;
  }

  double? get height => _height;
  double? get width => _width;
}
