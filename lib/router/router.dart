import 'package:auto_route/auto_route.dart';
import 'package:rhymer/features/favorites/view/favorites_screen.dart';
import 'package:rhymer/features/home/view/home_screen.dart';
import 'package:rhymer/features/poems/view/poems_screen.dart';
import 'package:rhymer/features/search/view/search_screen.dart';
import 'package:rhymer/features/settings/view/settings_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        AutoRoute(page: FavoritesRoute.page, path: 'favorites'),
        AutoRoute(page: PoemsRoute.page, path: 'poems'),
        AutoRoute(page: SearchRoute.page, path: 'search'),
        AutoRoute(page: SettingsRoute.page, path: 'settings'),
      ],
    ),
  ];
}
