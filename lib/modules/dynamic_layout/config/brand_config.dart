/// Example Brand config
///
/// layout: 'brand',
/// name: 'Our Brand Choice',
/// isBrandNameShown: true,
/// isLogoCornerRounded: true

class BrandConfig {
  String? layout;
  String? name;
  bool? isBrandNameShown = true;
  bool? isLogoCornerRounded = true;
  bool enableBackground = false;

  BrandConfig(
    this.layout,
    this.isBrandNameShown,
    this.isLogoCornerRounded,
    this.enableBackground,
  );

  BrandConfig.fromJson(dynamic json) {
    layout = json['layout'];
    name = json['name'];
    isBrandNameShown = json['isBrandNameShown'];
    isLogoCornerRounded = json['isLogoCornerRounded'];
    enableBackground = json['enableBackground'] ?? false;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['layout'] = layout;
    map['name'] = name;
    map['isBrandNameShown'] = isBrandNameShown;
    map['isLogoCornerRounded'] = isLogoCornerRounded;
    map['enableBackground'] = enableBackground;
    return map;
  }
}
