import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget with BaseApp {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Micro Frontends Simple Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => throw UnimplementedError();

  @override
  List<MicroApp> get microApps => throw UnimplementedError();
}
