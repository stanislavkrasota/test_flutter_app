import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/person.dart';
import 'package:http/http.dart' as http;

class PeopleService {
  static String url = 'http://jsonplaceholder.typicode.com/users';

  Future <List<Person>> fetchPeople() async {
    final res = await http.get(url);
    final resBody = json.decode(res.body);

    // List<Person> people = resBody.fromJson(json).toList();
    return resBody['value'];
  }
}