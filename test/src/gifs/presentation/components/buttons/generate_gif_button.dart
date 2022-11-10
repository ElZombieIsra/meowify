import 'package:flutter/material.dart';
import 'package:meowify/src/style.dart';

class GenerateGifButton extends StatelessWidget {
  const GenerateGifButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
          AppStyle.primaryColor,
        ),
      ),
      child: const Text('Meow 😻'),
    );
  }
}
