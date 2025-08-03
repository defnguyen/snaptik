import 'package:flutter/material.dart';
import 'package:snaptik/features/about/view/about_screen.dart';
import 'package:snaptik/features/contact/view/contact_screen.dart';
import 'package:snaptik/features/home/view/home_screen.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/features/library/view/media_detail_screen.dart';
import 'package:snaptik/features/splash/view/splash_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String home = '/home';
  static const String mediaDetail = '/media-detail';
  static const String about = '/about';
  static const String contact = '/contact';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case mediaDetail:
        final args = settings.arguments as LibraryItem?; // Expect LibraryItem
        if (args != null) {
          return MaterialPageRoute(
              builder: (_) => MediaDetailScreen(item: args));
        }
        return _errorRoute(settings.name); // Argument error
      case about:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case contact:
        return MaterialPageRoute(builder: (_) => const ContactScreen());
      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(child: Text('Route not found: $routeName')),
      ),
    );
  }
}
