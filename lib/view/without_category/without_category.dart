import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salesapp/utils/screen_utils.dart';

import '../../current_state.dart';
import '../../providers/ImageProvider.dart';
import '../../services/image_service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';

class WithoutCategory extends StatefulWidget {
  const WithoutCategory({super.key});

  @override
  _WithoutCategoryState createState() => _WithoutCategoryState();
}

class _WithoutCategoryState extends State<WithoutCategory> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await Provider.of<ImageListProvider>(context,listen: false).getScreenImageMasterList(CurrentState.tabs[CurrentState.selectedIndex].title.toLowerCase());
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Consumer<ImageListProvider>(builder: (context, imageList, child) {
      return CarouselSlider(
        options: CarouselOptions(
          height: ScreenUtils.height,
          initialPage: 0,
          viewportFraction: 1.0,
          enableInfiniteScroll: true,
          reverse: false,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: imageList.screenImageMasterList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: ScreenUtils.height,
                    width: ScreenUtils.width * 22 / 23,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://corsanywhere.herokuapp.com/${i.imageUrl!}" ?? Images.bedroom,headers: ImageService.headers),
                            fit: BoxFit.contain)),
                  ),
                  Positioned(
                    bottom: ScreenUtils.getHeight(40),
                    child: Text(
                      i.textOnImage ?? 'Imagine. Do',
                      style:  TextStyle(
                          fontSize: ScreenUtils.width * 0.028,
                          color:  Color.fromARGB(255, 12, 74, 97),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              );
            },
          );
        }).toList(),
      );
    })));
  }
}
