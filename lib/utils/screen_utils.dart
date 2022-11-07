
library ScreenUtils;

class ScreenUtils{
  static double height = 0.0;
  static double width = 0.0;

  static double getHeight(double val) {
    return val / 1011 * height;

  }

  static double getWidth(double val) {
    return val / 1440 * width;
  }
}