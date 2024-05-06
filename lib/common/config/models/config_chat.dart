class ConfigChat {
  final bool enableSmartChat;
  final bool enableVendorChat;
  final bool useRealtimeChat;
  final List<String> showOnScreens;
  final List<String> hideOnScreens;
  final String version;

  ConfigChat({
    this.enableSmartChat = true,
    this.enableVendorChat = true,
    this.useRealtimeChat = false,
    this.showOnScreens = const [],
    this.hideOnScreens = const [],
    this.version = '2',
  });

  factory ConfigChat.fromJson(Map json) {
    return ConfigChat(
      enableSmartChat: json['EnableSmartChat'] ?? true,
      enableVendorChat: json['enableVendorChat'] ?? true,
      useRealtimeChat: json['UseRealtimeChat'] ?? false,
      showOnScreens: List<String>.from(json['showOnScreens'] ?? []),
      hideOnScreens: List<String>.from(json['hideOnScreens'] ?? []),
      version: json['version'] ?? '2',
    );
  }

  Map toJson() {
    var map = <String, dynamic>{
      'EnableSmartChat': enableSmartChat,
      'enableVendorChat': enableVendorChat,
      'UseRealtimeChat': useRealtimeChat,
      'showOnScreens': showOnScreens,
      'hideOnScreens': hideOnScreens,
      'version': version,
    };
    return map;
  }
}
