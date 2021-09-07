import 'package:flutter/widgets.dart';

@immutable
abstract class ImplicitNavigatorNotification<T> extends Notification {
  ImplicitNavigatorNotification({
    required this.currentValue,
    required this.currentDepth,
    required this.previousValue,
    required this.previousDepth,
  });

  final T currentValue;
  final int? currentDepth;

  final T previousValue;
  final int? previousDepth;
}

class PopNotification<T> extends ImplicitNavigatorNotification<T> {
  PopNotification({
    required T currentValue,
    required int? currentDepth,
    required T previousValue,
    required int? previousDepth,
  }) : super(
    currentValue: currentValue,
    currentDepth: currentDepth,
    previousValue: previousValue,
    previousDepth: previousDepth,
  );
}

class PushNotification<T> extends ImplicitNavigatorNotification<T> {
  PushNotification({
    required T currentValue,
    required int? currentDepth,
    required T previousValue,
    required int? previousDepth,
  }) : super(
    currentValue: currentValue,
    currentDepth: currentDepth,
    previousValue: previousValue,
    previousDepth: previousDepth,
  );
}