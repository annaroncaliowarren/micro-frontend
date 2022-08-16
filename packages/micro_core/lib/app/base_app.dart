import 'package:flutter/material.dart';

import 'micro_app.dart';
import 'micro_core_utils.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRoutes() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (MicroApp microApp in microApps) {
        routes.addAll(microApp.routes);
      }
    }
  }

  Route<dynamic>? generateRoutes(RouteSettings settings) {
    var routeName = settings.name;
    var routeArgs = settings.arguments;

    WidgetBuilderArgs? navigateTo = routes[routeName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routeArgs),
    );
  }
}
