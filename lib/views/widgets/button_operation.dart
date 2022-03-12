import 'package:flutter/material.dart';

class ButtonOperation extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;

  const ButtonOperation({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text),
      ),
    );
  }
}
