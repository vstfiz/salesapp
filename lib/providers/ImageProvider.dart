import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:salesapp/models/screen_image_master.dart';

import '../models/image_master.dart';
import '../services/image_service.dart';


class ImageListProvider with ChangeNotifier {
  List<ScreenImageMaster> screenImageMasterList=[];
  List<ImageMaster> imageMasterList=[];
  Future<void> getScreenImageMasterList(String screenName) async {
    screenImageMasterList = await ImageService.getImagesByScreenCode(screenName: screenName);
    notifyListeners();
  }
  Future<void> getImageMasterListByTypeAndCategory(String type,String category) async {
    imageMasterList = await ImageService.getImagesByTypeAndCategory(type: type, category: category);
    notifyListeners();
  }
  Future<void> getImageMasterListByTypeAndCategoryAndSubCategory(String type,String category,String subCategory) async {
    imageMasterList = await ImageService.getImagesByTypeAndCategoryAndSubCategory(type: type, category: category, subCategory: subCategory);
    notifyListeners();
  }

}
