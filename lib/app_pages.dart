import 'package:get/get.dart';

import './page/splash/splash_binding.dart';
import './page/splash/splash_view.dart';
import './page/home/home_binding.dart';
import './page/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(seconds: 2),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(seconds: 1),
    ),
  ];
}
