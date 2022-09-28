import 'package:equatable/equatable.dart';

class GifModel extends Equatable {
  const GifModel({required this.url});

  final String url;

  @override
  List<Object?> get props => [url];
}
