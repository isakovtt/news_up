import 'package:get_time_ago/get_time_ago.dart';

extension TimeAgoExtension on DateTime {
  String toTimeAgo({String? timestamp}) {
    String timeAgo = GetTimeAgo.parse(this, locale: 'az').replaceFirst(' ', '');

    timeAgo = timeAgo.replaceAll('hours', 'h');

    timeAgo = timeAgo.replaceAll('days', 'd');

    timeAgo = timeAgo.replaceAll('minutes', 'm');
    timeAgo = timeAgo.replaceAll('seconds', 's');
    timeAgo = timeAgo.replaceAll('aminute', '1m');
    timeAgo = timeAgo.replaceAll('anhour', '1h');
    timeAgo = timeAgo.replaceAll('aday', '1d');
    timeAgo = timeAgo.replaceAll('nanoseconds', 's');
    timeAgo = timeAgo.replaceAll('microsecondsSinceEpoch', 's');
    // timeAgo = timeAgo.substring(0);
   

    return timeAgo;
  }
}
