import 'package:flutter/material.dart';
import 'package:micro_app_home/home.dart';
import 'package:micro_app_login/app/pages/login_page.dart';
import 'package:micro_app_login/login.dart';
import 'package:micro_app_product/app/micro_app_product_resolver.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget with BaseApp {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();
    
    eventBus.on().listen(
      (event) {
        print(event);
      },
    );

    return MaterialApp(
      title: 'Micro Frontends Simple Example',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: super.generateRoutes,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade200,
        ),
      ),
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
        MicroAppHomeResolver(),
        MicroAppProductResolver(),
      ];
}
