import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LawAPICall {
  static Future<ApiCallResponse> call({
    int? n,
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LawAPI',
      apiUrl: 'http://lawapi.xyz/ask/n/query',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'number': n,
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProPublicaAPICall {
  static Future<ApiCallResponse> call({
    dynamic? jsonpJson,
    String? q = '',
    int? billId,
    String? apiKey = 'BJg3gq9CZDBGdr47b6e5X0WSpZO3KQuBoPHSLc5Y',
  }) async {
    final jsonp = _serializeJson(jsonpJson);

    return ApiManager.instance.makeApiCall(
      callName: 'ProPublica API',
      apiUrl: 'https://api.propublica.org/congress/v1/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'JSONP': jsonp,
        'q': q,
        'bill_id': billId,
        'api-key': "BJg3gq9CZDBGdr47b6e5X0WSpZO3KQuBoPHSLc5Y",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
