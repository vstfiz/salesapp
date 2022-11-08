import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salesapp/utils/screen_utils.dart';
import 'package:salesapp/view/home_screen/home_screen.dart';
import 'package:salesapp/providers/ImageProvider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ImageListProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            home: const HomeScreen());
      });
    });
  }
}
