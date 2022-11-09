import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

/// Forces landscape-only mode application-wide
/// Use this Mixin on the main app widget i.e. app.dart
/// Flutter's 'App' has to extend Stateless widget.
///
/// Call `super.build(context)` in the main build() method
/// to enable landscape only mode
mixin LandscapeModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _landscapeModeOnly();
    return const SizedBox();
  }
}

/// Forces landscape-only mode on a specific screen
/// Use this Mixin in the specific screen you want to
/// block to landscape only mode.
///
/// Call `super.build(context)` in the State's build() method
/// and `super.dispose();` in the State's dispose() method
mixin LandscapeStatefulModeMixin<T extends StatefulWidget> on State<T> {
  @override
   Widget build(BuildContext context) {
    _landscapeModeOnly();
    return const SizedBox();
  }

  @override
  void dispose() {
    _enableRotation();
    super.dispose();
  }
}

/// blocks rotation; sets orientation to: landscape
void _landscapeModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void _enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}
