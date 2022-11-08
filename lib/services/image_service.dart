import '../models/generic_response/generic_response.dart';
import '../models/image_master.dart';
import '../models/screen_image_master.dart';
import '../utils/url.dart';
import 'HTTPService.dart';

class ImageService {
  static ImageService? _instance;
  static ImageService? getInstance()  {
    _instance ??= ImageService();
    return _instance;
  }
  static Map<String, String> headers = {
    "Accept": "*/*",
    "Content-Type": "application/json",
    "Access-Control-Allow-Origin":'*'
  };

  static Future<List<ScreenImageMaster>> getImagesByScreenCode(
      {required String screenName}) async {
    Map<String, dynamic> parameters = {"code": screenName};
    GenericResponse response = await HTTPService.callApi(
        HttpRequestType.get, URL.getImageByScreenName,
        params: parameters, headers: headers);
    List<ScreenImageMaster> imageList = [];
    if (response.data.isNotEmpty) {
      for (var element in response.data) {
        imageList.add(ScreenImageMaster.fromJson(element));
      }
    }
    return imageList;
  }

  static Future<List<ImageMaster>> getImagesByTypeAndCategory(
      {required String type, required String category}) async {
    Map<String, dynamic> parameters = {
      "type": type,
      "category": category,
    };
    GenericResponse response = await HTTPService.callApi(
        HttpRequestType.get, URL.getImageByTypeAndCategory,
        params: parameters, headers: headers);
    List<ImageMaster> imageList = [];
    if (response.data.isNotEmpty) {
      for (var element in response.data) {
        imageList.add(ImageMaster.fromJson(element));
      }
    }
    return imageList;
  }

  static Future<List<ImageMaster>> getImagesByTypeAndCategoryAndSubCategory(
      {required String type,
      required String category,
      required String subCategory}) async {
    Map<String, dynamic> parameters = {
      "type": type,
      "category": category,
      "subCategory": subCategory
    };
    GenericResponse response = await HTTPService.callApi(
        HttpRequestType.get, URL.getImageByTypeAndCategoryAndSubCategory,
        params: parameters, headers: headers);
    List<ImageMaster> imageList = [];
    if (response.data.isNotEmpty) {
      for (var element in response.data) {
        imageList.add(ImageMaster.fromJson(element));
      }
    }
    return imageList;
  }
}
