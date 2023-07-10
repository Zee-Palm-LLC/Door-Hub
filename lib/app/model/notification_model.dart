class NotificationModel {
  String id;
  NotificationType type;
  String notificationMessage;
  DateTime notificationTime;
  NotificationModel({
    required this.id,
    required this.type,
    required this.notificationMessage,
    required this.notificationTime,
  });
}

enum NotificationType {
  orderCancel,
  orderDone,
  orderBooked,
  orderPaid,
  orderTime
}

List<NotificationModel> notificationsList = [
  NotificationModel(
    id: '1',
    type: NotificationType.orderPaid,
    notificationMessage:
        'AC Installation (Both) service payment is successfully Paid.',
    notificationTime: DateTime.now().subtract(const Duration(seconds: 10)), // Just now
  ),
  NotificationModel(
    id: '2',
    type: NotificationType.orderBooked,
    notificationMessage: 'Booking Status has been changed 3:00-4:00 PM',
    notificationTime: DateTime.now().subtract(const Duration(days: 1)), // Yesterday
  ),
  NotificationModel(
    id: '3',
    type: NotificationType.orderDone,
    notificationMessage: 'Confirmed Your booking AC Installation',
    notificationTime: DateTime.now().subtract(const Duration(days: 2)), // 2 days ago
  ),
  NotificationModel(
    id: '4',
    type: NotificationType.orderTime,
    notificationMessage: 'Hair Style Professional Coming today 2:00-3:00 PM.',
    notificationTime: DateTime.now().subtract(const Duration(days: 6)), // 6 days ago
  ),
  NotificationModel(
    id: '5',
    type: NotificationType.orderCancel,
    notificationMessage: 'Order Cancelled! Home Deep Cleaning Westinghouse.',
    notificationTime: DateTime.now().subtract(const Duration(days: 15)), // 15 days ago
  ),
];
