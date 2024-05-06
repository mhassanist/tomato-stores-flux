import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../models/entities/fstore_notification_item.dart';
import '../../services/notification/notification_service.dart';

class OneSignalNotificationService extends NotificationService {
  final _oneSignalUser = OneSignal.User;
  final _oneSignalNotification = OneSignal.Notifications;
  final String appID;

  OneSignalNotificationService({required this.appID}) {
    OneSignal.initialize(appID);
  }

  @override
  void disableNotification() {
    _oneSignalUser.pushSubscription.optOut();
  }

  @override
  void enableNotification() {
    _oneSignalUser.pushSubscription.optIn();
  }

  @override
  void init({
    String? externalUserId,
    required NotificationDelegate notificationDelegate,
  }) {
    OneSignal.login(externalUserId ?? '');
    delegate = notificationDelegate;

    _setupOnMessageOpenedApp();
    _setupOnMessage();
  }

  void _setupOnMessage() {
    _oneSignalNotification.addForegroundWillDisplayListener(_onMessage);
  }

  void _onMessage(OSNotificationWillDisplayEvent result) {
    // result.preventDefault();
    final data = result.notification;
    delegate.onMessage(
      FStoreNotificationItem(
        id: data.notificationId,
        title: data.title ?? '',
        body: data.body ?? '',
        additionalData: data.additionalData,
        date: DateTime.now(),
      ),
    );
  }

  void _setupOnMessageOpenedApp() {
    _oneSignalNotification.addClickListener(
      (OSNotificationClickEvent result) {
        final data = result.notification;
        // result.preventDefault();
        delegate.onMessageOpenedApp(
          FStoreNotificationItem(
            id: data.notificationId,
            title: data.title ?? '',
            body: data.body ?? '',
            additionalData: data.additionalData,
            date: DateTime.now(),
          ),
        );
      },
    );
  }

  @override
  void setExternalId(String? userId) async {
    if (userId != null) {
      await OneSignal.login(userId);
    }
  }

  @override
  void removeExternalId() async {
    await OneSignal.logout();
  }
}
