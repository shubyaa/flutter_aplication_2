import 'dart:convert';

import 'package:flutter_application_1/Model/ObjectModel.dart';
import 'package:http/http.dart' as http;

Future<List<ObjectModel>> fetchData(api) async {
  List<ObjectModel> obj = [];

  final response = await http.get(Uri.parse(api));

  if (response.statusCode == 200) {
    List<dynamic> values = [json.decode(response.body)];
    if (values.isNotEmpty) {
      for (int i = 0; i < values.length; i++) {
        if (values[i] != null) {
          Map<String, dynamic> map = values[i];
          obj.add(ObjectModel.fromJson(map));
        }
      }
    }

    // ObjectModel values;
    // values = json.decode(response.body);
    // if (values.isNotEmpty) {
    //   for (int i = 0; i < values.length; i++) {
    //     if (values[i] != null) {
    //       Map<String, dynamic> map = values[i];
    //       obj.add(ObjectModel.fromJson(map));
    //     }
    //   }
    // }

    return obj;
  } else {
    throw Exception("This is fatal");
  }
}
