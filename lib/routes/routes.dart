import 'package:chit_chat/view/activity_screen.dart';
import 'package:chit_chat/view/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/activity',
      builder: (context, state) => const ActivityScreen(),
    ),
  ],
);
