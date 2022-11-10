import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

pumpApp(
  Widget child, {
  List<Override> overrides = const [],
}) {
  return ProviderScope(
    overrides: overrides,
    child: MaterialApp(
      home: Scaffold(body: child),
    ),
  );
}
