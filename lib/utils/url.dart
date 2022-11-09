class URL{
  static const String baseUrl = 'https://salesapp-api.yantralive.com';
  static const String image = "$baseUrl/image";

  static const String type = "$baseUrl/type";
  static const String getImageByScreenName = "$image/getByCode";
  static const String getImageByType = "$type/getByType";
  static const String getImageByTypeAndCategory = "$type/getByTypeAndCategory";
  static const String getImageByTypeAndCategoryAndSubCategory = "$type/getByTypeAndCategoryAndSubCategory";

}