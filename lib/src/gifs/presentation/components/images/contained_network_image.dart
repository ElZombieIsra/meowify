import 'package:flutter/material.dart';

class ContainedNetworkImage extends StatelessWidget {
  const ContainedNetworkImage(
    this.url, {
    super.key,
    this.showLoader = true,
  });

  final String url;
  final bool showLoader;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.contain,
      loadingBuilder: getLoadingBuilder(),
    );
  }

  Widget Function(BuildContext, Widget, ImageChunkEvent?)? getLoadingBuilder() {
    if (!showLoader) return null;

    return (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    };
  }
}
