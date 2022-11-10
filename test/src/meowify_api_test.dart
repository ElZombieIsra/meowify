import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:meowify/src/meowify_api.dart';

import '../mocks/gif_mock.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late MeowifyApi api;

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    api = MeowifyApi(dio);
  });

  test(
    'should generate a cat gif',
    () async {
      final gif = gifs[0];

      dioAdapter.onGet(
        '/gif',
        (server) => server.reply(201, mockList),
      );

      final gifRes = await api.generateCatGif();

      expect(gifRes.url, equals(gif.url));
    },
  );
}
