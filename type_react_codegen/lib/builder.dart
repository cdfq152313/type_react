import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:type_react_codegen/src/type_react_generator.dart';

Builder typeReactBuilder([BuilderOptions options = BuilderOptions.empty]) => SharedPartBuilder([TypeReactGenerator()], 'type_react');
