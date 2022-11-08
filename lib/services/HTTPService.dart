import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/generic_response/generic_response.dart';

enum HttpRequestType { post, get, delete, put, patch }

class HTTPService {
  static GenericResponse parseResponse(http.Response response) {
    final int statusCode = response.statusCode;
    // print(statusCode.toString() + '  ' + response.request.toString() + '  ' + response.request.headers.toString() + ' '+ response.body.toString());
    if (statusCode < 200 || statusCode >= 400) {
      return GenericResponse(status: Status(statusCode: statusCode), data: [], responseHeaders: {});
    }
    Map<String, dynamic> responseBody = {};
    try {
      responseBody['data'] = response.body.isEmpty ? {} : response.body;
    } on FormatException {
      responseBody = {"status": <String, dynamic>{}};
    }
    responseBody['status']={
      "statusCode":statusCode,
      "statusType":RequestStatus.SUCCESS.name
    };
    return GenericResponse.fromJson(response.headers, responseBody);
  }

  static Future<GenericResponse> callApi(HttpRequestType type, String serverUrl,
      {Map<String, dynamic> bodyy = const {},
        Map<String, dynamic> params = const {},
        Map<String, String> headers = const {
          "Accept": "*/*",
          "Content-Type": "application/json",
        }}) {
    var body = jsonEncode(bodyy);
    switch (type) {
      case HttpRequestType.get:
        {
          String param = '?';
          for (int i = 0; i < params.length; i++) {
            param += params.keys.elementAt(i);
            param += '=';
            param += params.values.elementAt(i);
            param += (i != params.length - 1) ? '&' : '';
          }
          // print(serverUrl + param);
          return http
              .get(Uri.parse(serverUrl + param), headers: headers)
              .timeout(const Duration(seconds: 90))
              .then(parseResponse);
        }
      case HttpRequestType.post:
        {
          return http
              .post(Uri.parse(serverUrl), body: body, headers: headers)
              .timeout(const Duration(seconds: 90))
              .then(parseResponse);
        }
      case HttpRequestType.delete:
        {
          return http
              .delete(Uri.parse(serverUrl), body: body, headers: headers)
              .timeout(const Duration(seconds: 90))
              .then(parseResponse);
        }
      case HttpRequestType.put:
        {
          return http
              .put(Uri.parse(serverUrl), body: body, headers: headers)
              .timeout(const Duration(seconds: 90))
              .then(parseResponse);
        }
      case HttpRequestType.patch:
        {
          return http
              .patch(Uri.parse(serverUrl), body: body, headers: headers)
              .timeout(const Duration(seconds: 90))
              .then(parseResponse);
        }
      default:
        {
          return Future.value(GenericResponse.empty(status: Status(statusCode: 0,statusType: RequestStatus.FAILED)));
        }
    }
  }
}
