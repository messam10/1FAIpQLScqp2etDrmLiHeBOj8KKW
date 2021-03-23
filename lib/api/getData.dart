import 'package:full/constants/constant.dart';
import 'package:full/models/json.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<View>> getData() async {
  http.Response response = await http.get(url);
  var data = jsonDecode(response.body);

  for (var x in data) {
    notes.add(View.fromJson(x));
  }

  return notes;
}