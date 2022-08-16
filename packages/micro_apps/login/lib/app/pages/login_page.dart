import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

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
            navigatorKey.currentState?.pushNamed('/home');
          },
        ),
      ),
    );
  }
}
