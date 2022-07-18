import 'package:get/get.dart';

import 'package:dirbbox/app/modules/menu/bindings/menu_binding.dart';
import 'package:dirbbox/app/modules/menu/views/menu_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
      transition: Transition.leftToRightWithFade
    ),
    GetPage(
      name: _Paths.MENUCLOSE,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade
    ),
  ];
}
