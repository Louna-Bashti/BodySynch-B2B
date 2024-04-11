import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestTmdbCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test tmdb',
      apiUrl: 'https://api.themoviedb.org/3/trending/movie/week',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2OTUxMDA2MjkwZWUzZWE2Y2VjMTY4ZDAyYzg1NzY4OCIsInN1YiI6IjY1MTEyYjM3NmY5NzQ2MDBlNjE1OWZjYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.uwZ6cnZaFpk67DD2V6pVyil4qUKwVVhlFPofL-8HJLk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginLibreLinkUpCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "email": "louna.bashti@etud.univ-jfc.fr",
  "password": "-B0dy5ynCh-"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login LibreLinkUp',
      apiUrl: 'https://api-eu.libreview.io/llu/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'accept-encoding': 'gzip',
        'cache-control': 'no-cache',
        'connexion': 'keep-alive',
        'content-type': 'application/json',
        'product': 'llu-android',
        'version': '4.7',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
