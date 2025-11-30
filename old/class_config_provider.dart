import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'class_definition.dart';

final classConfigProvider =
    FutureProvider<Map<String, ClassDefinition>>((ref) async {
  final raw = await rootBundle.loadString('assets/data/classes.json');

  final jsonMap = jsonDecode(raw);

  final List<dynamic> classesJson = jsonMap['classes'];

  final Map<String, ClassDefinition> classes = {
    for (final c in classesJson)
      c['id']: ClassDefinition.fromJson(c),
  };

  return classes;
});
