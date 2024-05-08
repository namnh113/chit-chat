import 'package:chit_chat/page/chat_page.dart';
import 'package:chit_chat/routes/route_name.dart';
import 'package:chit_chat/page/activity_page.dart';
import 'package:chit_chat/page/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouteNames.activity,
      builder: (context, state) => const ActivityPage(),
    ),
    GoRoute(
      path: RouteNames.chat,
      builder: (context, state) => const ChatPage(),
    ),
  ],
);
