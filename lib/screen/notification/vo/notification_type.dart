import 'package:toss/common/common.dart';

enum NotificationType {
  tossPay('토스페이', '$basePath/notifications/notification_toss.png'),
  luck('행운복권', '$basePath/notifications/notification_luck.png'),
  people('토스 공동구매', '$basePath/notifications/notification_people.png'),
  stock('토스증권 컨텐츠', '$basePath/notifications/notification_stock.png'),
  walk('만보기', '$basePath/notifications/notification_walk.png'),
  moneyTip('오늘의 머니 팁', '$basePath/notifications/notification_idea.png');

  const NotificationType(this.name, this.iconPath);

  final String iconPath;
  final String name;
}
