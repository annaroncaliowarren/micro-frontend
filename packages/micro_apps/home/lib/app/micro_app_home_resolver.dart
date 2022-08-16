import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

import 'pages/home_page.dart';

class MicroAppHomeResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_home';

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/home': (context, args) => const HomePage(),
    };
  }
}
