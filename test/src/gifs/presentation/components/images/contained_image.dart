import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContainedImage extends StatelessWidget {
  const ContainedImage(
    this.bytes, {
    super.key,
    this.showLoader = true,
  });

  final Uint8List bytes;
  final bool showLoader;

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      bytes,
      fit: BoxFit.contain,
    );
  }
}
