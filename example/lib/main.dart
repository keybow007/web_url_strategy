import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_url_strategy/web_url_strategy.dart';

void main() {
  //Set path url strategy before runApp
  //https://docs.flutter.dev/ui/navigation/url-strategies#configuring-the-url-strategy
  WebUrlStrategy().setPathUrlStrategy();
  runApp(const MyApp());
}

class StringPaths {
  static String home = "/";
  static String detail = "/detail";
}

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: StringPaths.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: StringPaths.detail,
      builder: (context, state) => const DetailScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: ElevatedButton(
            onPressed: () => context.go(StringPaths.detail),
            child: const Text("Open DetailScreen"),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: ElevatedButton(
            onPressed: () => context.go(StringPaths.home),
            child: const Text("Close DetailScreen"),
          ),
        ),
      ),
    );
  }
}
