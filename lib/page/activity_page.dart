import 'package:chit_chat/model/activity.dart';
import 'package:chit_chat/provider/activity_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActivityPage extends ConsumerWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(activityProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pull to refresh')),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(activityProvider.future),
        child: ListView(
          children: [
            Center(
              child: switch (activity) {
                AsyncValue<Activity>(:final valueOrNull?) => Text(valueOrNull.activity),
                AsyncValue(:final error?) => Text('Error: $error'),
                _ => const CircularProgressIndicator(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
