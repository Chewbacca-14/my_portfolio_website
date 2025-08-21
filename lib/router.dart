import 'package:auto_route/auto_route.dart';
import 'package:my_portfolio_website/about_me/about_me.dart';
import 'package:my_portfolio_website/screens/home.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/about',
          page: AboutMeRoute.page,
        ),
      ];
}
