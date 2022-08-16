import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

EventBus eventBus = EventBus();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonDefaultWidget(
          title: 'Ir para Home',
          onPressed: () {
            eventBus.fire('Anna');
            navigatorKey.currentState?.pushNamed('/home');
          },
        ),
      ),
    );
  }
}
