import 'package:flutter/material.dart';

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
          Color(0xFFD2691E),
        ),
      ),
      child: const Text('Generate new GIF'),
    );
  }
}
