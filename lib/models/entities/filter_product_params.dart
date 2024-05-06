import '../../services/service_config.dart';

class FilterProductParams {
  final String? attribute;
  final String? attributeTerm;
  final String? brand;
  final bool? onSale;
  final bool? featured;
  final String? orderby;
  final String? order;
  final String? listingLocation;

  FilterProductParams({
    this.attribute,
    this.attributeTerm,
    this.brand,
    this.onSale,
    this.featured,
    this.orderby,
    this.order,
    this.listingLocation,
  });

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};
    final serverConfig = ServerConfig();

    if (serverConfig.isWooPluginSupported) {
      result.addAll({
        'attribute': attribute,
        'attribute_term': attributeTerm,
        'brand': brand,
        'on_sale': onSale,
        'featured': featured,
        'orderby': orderby,
        'order': order,
      });

      result.removeWhere((key, value) => value == null || value.isEmpty);

      return result;
    }

    if (serverConfig.isListingType) {
      result.addAll({
        'orderby': orderby,
        'order': order,
        'location': listingLocation,
      });

      result.removeWhere((key, value) => value == null || value.isEmpty);

      return result;
    }

    return {};
  }

  factory FilterProductParams.fromJson(Map<String, dynamic> json) {
    final serverConfig = ServerConfig();

    if (serverConfig.isWooPluginSupported) {
      return FilterProductParams(
        attribute: json['attribute']?.toString(),
        attributeTerm: json['attribute_term']?.toString(),
        brand: json['brand']?.toString(),
        onSale: json['on_sale'],
        featured: json['featured'],
        orderby: json['orderby']?.toString(),
        order: json['order']?.toString(),
      );
    }

    if (serverConfig.isListingType) {
      return FilterProductParams(
        orderby: json['orderby']?.toString(),
        order: json['order']?.toString(),
        listingLocation:
            json['location']?.toString() ?? json['region']?.toString(),
      );
    }

    return FilterProductParams();
  }
}
