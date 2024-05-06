enum AdvertisementType { banner, reward, native, interstitial }

extension AdvertisementTypeExtension on AdvertisementType {
  String get content => name;
}

enum AdvertisementProvider { facebook, google }

extension AdvertisementProviderExtension on AdvertisementProvider {
  String get content => name;
}
