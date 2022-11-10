import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meowify/src/gifs/domain/models/gif_model.dart';
import 'package:meowify/src/gifs/presentation/views/gif_generator.dart';
import 'package:meowify/src/meowify_api.dart';

class GifGeneratorView extends ConsumerStatefulWidget {
  const GifGeneratorView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GifGeneratorViewState();
}

class _GifGeneratorViewState extends ConsumerState<GifGeneratorView> {
  GifModel? gif;
  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = true;
    generateGif();
  }

  void generateGif() async {
    setState(() => loading = true);
    final value = await ref.read(apiProvider).generateCatGif();
    setState(() {
      gif = value;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GifGenerator(
      imageBytes: gif?.bytes,
      onGenerateGif: generateGif,
      loading: loading,
    );
  }
}
