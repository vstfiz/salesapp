import 'package:flutter/material.dart';
import 'package:salesapp/utils/screen_utils.dart';
import 'package:salesapp/view/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        ScreenUtils.height = constraints.maxHeight;
        ScreenUtils.width = constraints.maxWidth;
        return MaterialApp(
            color: Colors.white,
            title: 'Yantra Sales App',
            theme: ThemeData(
              primarySwatch: Colors.lightBlue,
            ),
            home: HomeScreen()
        );
      });
    });
  }
}
