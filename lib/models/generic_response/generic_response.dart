import 'dart:convert';

import 'package:flutter/cupertino.dart';

class GenericResponse {
  Status status = Status(statusCode: 0,statusType: RequestStatus.FAILED);
  List<dynamic> data = [];
  Map<String, String> responseHeaders = {};

  GenericResponse({required this.status,  required this.data,  required this.responseHeaders});
  GenericResponse.empty({required this.status});

  GenericResponse.fromJson(Map<String, String> headers, Map<String, dynamic> json) {
    responseHeaders = headers;
    status =
    (json['status'] != null ? Status.fromJson(json['status']) : null)!;

    if (json['data'] != null) {
      data = jsonDecode(json['data']);
    }
  }

  String toObjectString(GenericResponse genericResponse){
    return genericResponse.status.toJson().toString() + genericResponse.data.first.toString();
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data =  <String, dynamic>{};
  //   if (status != null) {
  //     data['status'] = status.toJson();
  //   }
  //   if (this.data != null) {
  //     data['data'] = this.data.map((Map<>v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}


enum RequestStatus{ SUCCESS,FAILED }

class Status {
  late int statusCode;

  late RequestStatus statusType;

  Status(
      {this.statusCode = 0, this.statusType = RequestStatus.FAILED});

  @override
  String toString() {
    return 'Status{statusCode: $statusCode, statusType: $statusType}';
  }

  Status.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusType = RequestStatus.values.byName(json['statusType']??'FAILED');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['statusType'] = statusType;
    return data;
  }
}
