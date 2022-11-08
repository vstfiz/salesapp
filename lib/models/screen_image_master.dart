class ScreenImageMaster {
  int? id;
  String? screenCode;
  String? screenDescription;
  String? imageUrl;
  String? textOnImage;
  int? isActive;
  String? createdAt;
  String? updatedAt;

  ScreenImageMaster(
      {this.id,
        this.screenCode,
        this.screenDescription,
        this.imageUrl,
        this.textOnImage,
        this.isActive,
        this.createdAt,
        this.updatedAt});

  ScreenImageMaster.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    screenCode = json['screen_code'];
    screenDescription = json['screen_description'];
    imageUrl = json['image_url'];
    textOnImage = json['text_on_image'];
    isActive = json['is_active'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['screen_code'] = this.screenCode;
    data['screen_description'] = this.screenDescription;
    data['image_url'] = this.imageUrl;
    data['text_on_image'] = this.textOnImage;
    data['is_active'] = this.isActive;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}