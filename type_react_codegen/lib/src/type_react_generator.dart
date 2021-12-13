import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/src/dart/element/inheritance_manager3.dart' show InheritanceManager3;
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class TypeReactGenerator extends Generator {
  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    return library.allElements
        .whereType<ClassElement>()
        .where((element) => element.allSupertypes.any((element) => element.getDisplayString(withNullability: false).contains('TypedProps')))
        .map(generateAll)
        .join('\n');
  }

  String generateAll(ClassElement element) {
    final manager = InheritanceManager3();
    const excludeFieldsSet = {'r', 'hashCode', 'runtimeType'};
    const excludeToMap = {...excludeFieldsSet, 'children'};
    const excludeToTypedProps = {...excludeFieldsSet, 'key', 'ref'};
    final fields = [
      ...manager.getInheritedConcreteMap2(element).values.whereType<PropertyAccessorElement>().map((e) => e.variable),
      ...element.fields,
    ].where((e) => !excludeFieldsSet.contains(e.name)).toList();
    final buffer = StringBuffer();

    buffer.writeln('/// Register component');
    final registerName = '_\$${element.displayName}Register';
    buffer.writeln('final $registerName = registerComponent2(() => ${element.displayName}Component());');

    buffer.writeln('/// Convert props to ReactElement.');
    final propsMixinName = '_\$${element.displayName}';
    buffer.writeln('''
    mixin $propsMixinName on TypedProps{
      @override
      ReactElement get r { 
        if(children == null){
          return $registerName(toMap());
        }else{
          return $registerName(toMap(), autoKey(children));
        }
      }
      
      @override
      Map toMap() {
        final p = this as ${element.displayName};
        return {
          ${fields.where((field) => !excludeToMap.contains(field.displayName)).map((field) => "if(p.${field.displayName} != null) '${field.displayName}': p.${field.displayName}").join(',')}
        };
     } 
    }
    ''');

    buffer.writeln('/// Convert props to typed props');
    final jsPropsName = '_\$${element.displayName}TypedProps';
    buffer.writeln('''
    class $jsPropsName with ComponentProps implements ${element.displayName}{
      $jsPropsName(this.props);
      final Map props;

      ${fields.where((field) => !excludeToTypedProps.contains(field.displayName)).map((field) => "@override ${field.type.getDisplayString(withNullability: false)} get ${field.name} => props['${field.name}'];").join('\n\n')}
    }
    ''');

    final componentMixinName = '_\$${element.displayName}Component';
    buffer.writeln('''
    mixin $componentMixinName on TypedComponent<${element.displayName}>{
      @override
      ${element.displayName} typedPropsFactory(Map props) => $jsPropsName(props);
      
      @override
      Map get defaultProps => ${element.displayName}(${element.unnamedConstructor.parameters.where(
              (element) => element.isNotOptional,
            ).map((e) => 'null').join(',')}).toMap();
    }
    ''');
    return buffer.toString();
  }
}
