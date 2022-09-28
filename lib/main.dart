import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/gifs/presentation/views/gif_generator_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Meowify',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const GifGeneratorView(),
      ),
    );
  }
}
