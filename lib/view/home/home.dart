import 'package:flutter/material.dart';
import 'package:salesapp/utils/screen_utils.dart';

import '../../utils/images.dart';

class Home extends StatefulWidget{
  const Home({super.key});


  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: ScreenUtils.height,
            width: ScreenUtils.width * 22/23,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Images.bedroom
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(child: Text('Imagine. Do',style: TextStyle(
            fontSize: 40,color: Colors.white,
            fontWeight: FontWeight.w600
          ),),bottom: ScreenUtils.getHeight(40),)

          ],
      ),
    ));
  }
}