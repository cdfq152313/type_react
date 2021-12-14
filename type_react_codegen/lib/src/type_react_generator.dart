import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:type_react_codegen/src/generate_element.dart';

class TypeReactGenerator extends Generator {
  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    final buffer = StringBuffer();
    library.allElements.whereType<ClassElement>().forEach((element) {
      final generator = GenerateElement.list.firstWhere(
        (generator) => element.allSupertypes.any((type) => type.getDisplayString(withNullability: false).contains(generator.superType)),
        orElse: () => null,
      );
      generator?.generate(buffer, element);
    });
    return buffer.toString();
  }
}
