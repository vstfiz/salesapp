import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:provider/provider.dart';
import 'package:salesapp/utils/screen_utils.dart';

import '../../current_state.dart';
import '../../providers/ImageProvider.dart';
import '../../services/image_service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';

class WithCategory extends StatefulWidget {
  const WithCategory({super.key});

  _WithCategoryState createState() => _WithCategoryState();
}

class _WithCategoryState extends State<WithCategory> {
  bool isRightMenuVisible = true;

  @override
  void initState() {
    super.initState();
  }

  // void getData() async {
  //   await Provider.of<ImageListProvider>(context,listen: false).getImageMasterListByTypeAndCategory(CurrentState.tabs[CurrentState.selectedIndex].title.toLowerCase(),CurrentState.tabs[CurrentState.selectedIndex].categories.first.name);
  // }
  void getCustomData(String type,String category) async {
    await Provider.of<ImageListProvider>(context,listen: false).getImageMasterListByTypeAndCategory(type.toLowerCase(),category);
  }
  void getCustomSubCategoryData(String type,String category,String subCategory) async {
    await Provider.of<ImageListProvider>(context,listen: false).getImageMasterListByTypeAndCategoryAndSubCategory(type.toLowerCase(),category,subCategory);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<ImageListProvider>(
          builder: (context, imageList, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: ScreenUtils.height,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imageList.imageMasterList.map((i) {
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
                                      image: NetworkImage(
                                          "https://corsanywhere.herokuapp.com/${i.imageUrl!}" ?? Images.bedroom,
                                          headers: ImageService.headers),
                                      fit: BoxFit.contain)),
                            ),
                            Positioned(
                              bottom: ScreenUtils.getHeight(40),
                              child: Text(
                                i.textOnImage ?? '',
                                style: const TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                !isRightMenuVisible
                    ? const SizedBox()
                    : Positioned(
                        top: 0.0,
                        child: Container(
                          width: CurrentState.tabs[CurrentState.selectedIndex]
                                  .categories.length *
                              (1.5 + ScreenUtils.width / 23),
                          height: ScreenUtils.width / 23,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                CurrentState.tabs[CurrentState.selectedIndex]
                                    .categories.length, (index) {
                              return index == 0
                                  ? const SizedBox()
                                  : Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () async{
                                            setState(() {
                                              CurrentState.selectedCategory =
                                                  CurrentState
                                                      .tabs[CurrentState
                                                          .selectedIndex]
                                                      .categories[index]
                                                      .name;
                                            });
                                            getCustomData( CurrentState
                                                .tabs[CurrentState
                                                .selectedIndex].title,CurrentState.selectedCategory);
                                          },
                                          child: Container(
                                            color: Colors.white,
                                            child: HoverContainer(
                                              color: CurrentState
                                                  .selectedCategory ==
                                                  CurrentState
                                                      .tabs.elementAt(CurrentState
                                                      .selectedIndex)
                                                      .categories[
                                                  index]
                                                      .name?ColorPallete.hoveringBlue.withAlpha(70):Colors.white,
                                              hoverColor: ColorPallete
                                                  .hoveringBlue
                                                  .withAlpha(70),
                                              width: ScreenUtils.width / 23,
                                              height: ScreenUtils.width / 23,
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  FaIcon(
                                                    CurrentState
                                                        .tabs[CurrentState
                                                        .selectedIndex]
                                                        .categories[index]
                                                        .icon,
                                                    size:
                                                    ScreenUtils.getWidth(16),
                                                    color: ColorPallete
                                                        .satinSheenGold,
                                                  ),
                                                  const SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    CurrentState
                                                        .tabs.elementAt(CurrentState
                                                        .selectedIndex)
                                                        .categories[index]
                                                        .name,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: CurrentState
                                                            .selectedCategory ==
                                                            CurrentState
                                                                .tabs.elementAt(CurrentState
                                                                .selectedIndex)
                                                                .categories[
                                                            index]
                                                                .name
                                                            ? 10
                                                            : 11,
                                                        fontWeight: CurrentState
                                                            .selectedCategory ==
                                                            CurrentState
                                                                .tabs.elementAt(CurrentState
                                                                .selectedIndex)
                                                                .categories[
                                                            index]
                                                                .name
                                                            ? FontWeight.w500
                                                            : FontWeight.w400,
                                                        color: ColorPallete
                                                            .satinSheenGold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 1.5,
                                        )
                                      ],
                                    );
                            }),
                          ),
                        ),
                      ),
                Positioned(
                  right: ScreenUtils.getWidth(20),
                  top: ScreenUtils.getHeight(20),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isRightMenuVisible = !isRightMenuVisible;
                      });
                    },
                    child: Container(
                      height: ScreenUtils.getWidth(20),
                      width: ScreenUtils.getWidth(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 1.5)),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                isRightMenuVisible
                    ? Positioned(
                        right: 0.0,
                        top: ScreenUtils.getHeight(100),
                        child: Container(
                          width: ScreenUtils.width / 23,
                          height: ScreenUtils.height * 0.7,
                          child: ListView(
                            children: List.generate(
                                CurrentState.tabs[CurrentState.selectedIndex]
                                    .subCategories.length, (index) {
                              return index==0?const SizedBox():Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        CurrentState.selectedSubCategory =
                                            CurrentState
                                                .tabs[
                                                    CurrentState.selectedIndex]
                                                .subCategories[index]
                                                .codename;
                                      });
                                      getCustomSubCategoryData(CurrentState
                                          .tabs[
                                      CurrentState.selectedIndex].title.toLowerCase(),CurrentState.selectedCategory,CurrentState.selectedSubCategory);
                                    },
                                    child: Container(
                                      color: Colors.white,
                                      child: HoverContainer(
                                        color: CurrentState
                                            .selectedSubCategory ==
                                            CurrentState
                                                .tabs.elementAt(CurrentState
                                                .selectedIndex)
                                                .subCategories[
                                            index]
                                                .codename?ColorPallete.hoveringBlue.withOpacity(0.7):Colors.white,
                                        hoverColor: ColorPallete.hoveringBlue
                                            .withOpacity(0.7),
                                        width: ScreenUtils.width / 23,
                                        // height: ScreenUtils.width / 23,
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: ScreenUtils.getHeight(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.lockOpen,
                                                size: ScreenUtils.getWidth(16),
                                                color: ColorPallete.satinSheenGold,
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                CurrentState
                                                    .tabs[
                                                CurrentState.selectedIndex]
                                                    .subCategories[index]
                                                    .name,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: CurrentState
                                                        .selectedSubCategory ==
                                                        CurrentState
                                                            .tabs[CurrentState
                                                            .selectedIndex]
                                                            .subCategories[
                                                        index]
                                                            .codename
                                                        ? 10
                                                        : 11,
                                                    fontWeight: CurrentState
                                                        .selectedSubCategory ==
                                                        CurrentState
                                                            .tabs[CurrentState
                                                            .selectedIndex]
                                                            .subCategories[
                                                        index]
                                                            .codename
                                                        ? FontWeight.w500
                                                        : FontWeight.w400,
                                                    color: ColorPallete
                                                        .satinSheenGold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                                  const SizedBox(
                                    height: 1.5,
                                  )
                                ],
                              );
                            }),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
