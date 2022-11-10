import 'package:flutter/material.dart';
import 'package:meowify/src/style.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      child: const Center(
        child: CircularProgressIndicator(
          color: AppStyle.primaryColor,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
