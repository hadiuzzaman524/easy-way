import 'package:auto_route/auto_route.dart';
import 'package:easy_way/presentation/routes/routes.gr.dart';

/// Configures the application's routing using AutoRoute.
///
/// Uses the `replaceInRouteName` option to simplify generated route names
/// by removing suffixes like `Screen`, `Page`, or `Route`.
///
/// The router currently defines:
/// - An initial route pointing to [CarConnectRoute].
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    /// The main route that shows the Car Connect screen on app start.
    AutoRoute(page: CarConnectRoute.page, initial: true),
  ];
}
