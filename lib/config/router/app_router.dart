import 'package:lakevista/screens/auth/login_screen.dart';
import 'package:lakevista/screens/home/home_screen.dart';

import '../../core/constants/export.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? '';
    switch (route) {
      case RouteNames.signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return null;
    }
  }
}
