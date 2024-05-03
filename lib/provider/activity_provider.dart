import 'dart:convert';

import 'package:chit_chat/model/activity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'activity_provider.g.dart';

@riverpod
Future<Activity> activity(ActivityRef ref) async {
  final response = await http.get(
    Uri.https('www.boredapi.com', '/api/activity'),
  );

  final json = jsonDecode(response.body) as Map;
  return Activity.fromJson(Map.from(json));
}
