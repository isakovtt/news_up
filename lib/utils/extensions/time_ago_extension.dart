import 'package:get_time_ago/get_time_ago.dart';

extension TimeAgoExtension on DateTime {
  String toTimeAgo({String? timestamp}) {
    String timeAgo = GetTimeAgo.parse(this, locale: 'az').replaceFirst(' ', '');

    timeAgo = timeAgo.replaceAll('hours', 'h');

    timeAgo = timeAgo.replaceAll('days', 'd');

    timeAgo = timeAgo.replaceAll('minutes', 'm');
    timeAgo = timeAgo.replaceAll('seconds', 's');
    timeAgo = timeAgo.replaceAll('a minute', 'm');
    timeAgo = timeAgo.replaceAll('an hour', 'h');
    timeAgo = timeAgo.replaceAll('a day', 'd');

    return timeAgo;
  }
}
