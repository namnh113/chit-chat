import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.g.dart';
part 'activity.freezed.dart';

@freezed
class Activity with _$Activity {
  factory Activity({
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}
