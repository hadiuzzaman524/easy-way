import 'package:auto_route/auto_route.dart';
import 'package:easy_way/presentation/routes/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CarConnectRoute.page, initial: true),
  ];
}
