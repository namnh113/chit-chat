import 'package:chit_chat/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            FilledButton.icon(
              onPressed: () {
                context.push(RouteNames.activity);
              },
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text('Pull to refresh'),
            ),
            FilledButton.icon(
              onPressed: () {
                context.push(RouteNames.chat);
              },
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text('Chat'),
            ),
            const SafeArea(
              top: false,
              left: false,
              right: false,
              child: SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }
}
