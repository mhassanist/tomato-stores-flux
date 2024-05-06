import 'dart:async';

// import 'package:flux_extended/index.dart';

import 'chat_service.dart';
import 'constants/enums.dart';

class ChatServices {
  // Add or remove your chat provider here
  final Map<ChatProviders, ChatService> supportChatProviders = {
    // // Zoho SalesIQ Mobilisten
    // ChatProviders.zohoSalesiq: SalesiqService(),
    // ChatProviders.chatGPT: ChatGPTService(),
  };

  Future<void> init() async {
    for (var provider in supportChatProviders.values) {
      await provider.init();
    }
  }

  void dispose() {
    for (var provider in supportChatProviders.values) {
      supportChatProviders[provider]?.dispose();
    }
  }

  Future<void> showChatScreen(ChatProviders? provider) async {
    if (provider == null) {
      return;
    }

    await supportChatProviders[provider]?.showChatScreen();
  }

  void changeLanguage(String? langCode) {
    for (var provider in supportChatProviders.values) {
      supportChatProviders[provider]?.changeLanguage(langCode);
    }
  }

  void logout() {
    for (var provider in supportChatProviders.values) {
      supportChatProviders[provider]?.logout();
    }
  }
}
