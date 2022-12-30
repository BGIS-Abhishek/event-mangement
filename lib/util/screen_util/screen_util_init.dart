part of 'screen_util.dart';

class ScreenUtilInit {
  static ScreenUtilInit ? _instance;
  ScreenUtilInit._();
  factory ScreenUtilInit() {
    return _instance!;
  }

  double ?_pixelRatio;
  double ?_textScaleFactor;
  double ?_screenHeight;
  double ?_screenWidth;
  double ?_statusBarHeight;
  double ?_bottomBarHeight;
  DesignSize ?_size;
  Orientation ?_orientation;
static  void init({
    required BoxConstraints constraints,
    Orientation orientation = Orientation.portrait,
    required DesignSize designSize,
  }) {
    _instance = ScreenUtilInit._();
    _instance?._size = designSize;
    _instance?._orientation = orientation;
    _instance?._screenHeight = constraints.maxHeight;
    _instance?._screenWidth = constraints.maxWidth;

    ui.SingletonFlutterWindow window =
        WidgetsBinding.instance?.window ?? ui.window;

    _instance?._pixelRatio = window.devicePixelRatio;
    _instance?._statusBarHeight = window.padding.top;
    _instance?._bottomBarHeight = window.padding.bottom;
    _instance?._textScaleFactor = window.textScaleFactor;
  }

  ///Get Screen Orientation
  Orientation get orientation => _orientation!;

  ///Get textScaleFactor
  double get textScaleFactor => _textScaleFactor!;

  ///Get pixel Ratio
  double get pixelRatio => _pixelRatio!;

  ///Get Screen Width
  double get screenWidth => _screenWidth!;

  ///get Screen Height
  double get screenHeight => _screenHeight!;

  double get bottomBarHeight => _bottomBarHeight! / _pixelRatio!;

  double get scaleWidth => _screenWidth! / _size!.width!;

  double get scaleHeight => _screenHeight! / _size!.height!;

  double get scaleText => min(scaleWidth, scaleHeight);

  double setWidth(num width) => width * scaleWidth;

  double setHeight(num height) => height * scaleHeight;

  double radius(num r) => r * scaleText;

  double setSp(num fontSize) => fontSize * scaleText;
}
