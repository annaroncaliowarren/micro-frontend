import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonDefaultWidget(
          title: 'Ir para Produto',
          onPressed: () {
            navigatorKey.currentState?.pushNamed('/product');
          },
        ),
      ),
    );
  }
}
