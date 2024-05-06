part of '../config.dart';

ConfigChat get kConfigChat => ConfigChat.fromJson(Configurations.configChat);

/// config for the chat app
/// config Whatapp: https://faq.whatsapp.com/en/iphone/23559013
List<Map> get smartChat => Configurations.smartChat;
String get adminEmail => Configurations.adminEmail;
String get adminName => Configurations.adminName;
