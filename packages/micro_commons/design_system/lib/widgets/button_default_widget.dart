import 'package:flutter/material.dart';

class ButtonDefaultWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ButtonDefaultWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.green.shade100,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 35,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.green.shade900,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
