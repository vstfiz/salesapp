import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:salesapp/models/screen_image_master.dart';

import '../models/image_master.dart';
import '../services/image_service.dart';


class ImageListProvider with ChangeNotifier {
  List<ScreenImageMaster> screenImageMasterList=[];
  List<ImageMaster> imageMasterList=[];
  int _topMenuSelectedIndex = 0;
  int _rightMenuSelectedIndex = 0;

  int get topMenuSelectedIndex => _topMenuSelectedIndex;

  Future<void>  setTopMenuSelectedIndex(int value) async{
    _topMenuSelectedIndex = value;
    notifyListeners();
  }
  Future<void>  setRightMenuSelectedIndex(int value) async{
    _rightMenuSelectedIndex = value;
    notifyListeners();
  }

  Future<void> getScreenImageMasterList(String screenName) async {
    screenImageMasterList = await ImageService.getImagesByScreenCode(screenName: screenName);
    _rightMenuSelectedIndex=-1;
    _topMenuSelectedIndex=-1;
    notifyListeners();
  }
  Future<void> getImageMasterListByTypeAndCategory(String type,String category) async {
    imageMasterList = await ImageService.getImagesByTypeAndCategory(type: type, category: category);
    _rightMenuSelectedIndex=-1;
    notifyListeners();
  }
  Future<void> getImageMasterListByTypeAndCategoryAndSubCategory(String type,String category,String subCategory) async {
    imageMasterList = await ImageService.getImagesByTypeAndCategoryAndSubCategory(type: type, category: category, subCategory: subCategory);
    notifyListeners();
  }

  Future<void> getImageMasterListByType(String type) async {
    imageMasterList = await ImageService.getImagesByType(type: type);
    _rightMenuSelectedIndex=-1;
    _topMenuSelectedIndex=-1;
    notifyListeners();
  }

  int get rightMenuSelectedIndex => _rightMenuSelectedIndex;
}
