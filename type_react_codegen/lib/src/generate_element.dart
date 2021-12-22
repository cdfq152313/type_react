import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/element/inheritance_manager3.dart' show InheritanceManager3;

const _excludeFieldsSet = {'r', 'factoryProxy', 'hashCode', 'runtimeType'};

abstract class GenerateElement {
  String get superType;

  void generate(StringBuffer buffer, ClassElement element);

  static final list = [
    GenerateProps(),
    GenerateState(),
    GenerateStateComponent(),
    GenerateComponent(),
  ];
}

class GenerateProps extends GenerateElement {
  @override
  String get superType => 'TypedProps';

  static String registerName(String name) => '_\$${name}Register';

  static String jsPropsName(String name) => '_\$${name}TypedProps';

  static String defaultPropsName(String name) => '_\$default${name}Props';

  @override
  void generate(StringBuffer buffer, ClassElement element) {
    final manager = InheritanceManager3();
    const excludeToMap = {..._excludeFieldsSet, 'children'};
    const excludeToTypedProps = {..._excludeFieldsSet, 'key', 'ref'};
    final fields = [
      ...manager.getInheritedConcreteMap2(element).values.whereType<PropertyAccessorElement>().map((e) => e.variable),
      ...element.fields,
    ];

    buffer.writeln('/// Convert props to ReactElement.');
    final propsMixinName = '_\$${element.displayName}';
    final _registerName = registerName(element.displayName);
    buffer.writeln('''
    mixin $propsMixinName on TypedProps{
      @override
      ReactDartComponentFactoryProxy2<Component2> get factoryProxy => $_registerName;

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
    final _jsPropsName = jsPropsName(element.displayName);
    buffer.writeln('''
    class $_jsPropsName with ComponentProps implements ${element.displayName}{
      $_jsPropsName(this.props);
      final Map props;

      ${fields.where((field) => !excludeToTypedProps.contains(field.displayName)).map((field) => "@override ${field.type.getDisplayString(withNullability: false)} get ${field.name} => props['${field.name}'];").join('\n\n')}
    }
    ''');

    final _defaultPropsName = defaultPropsName(element.displayName);
    buffer.writeln('Map get $_defaultPropsName => ${element.displayName}(${element.unnamedConstructor.parameters.where(
          (element) => element.isNotOptional,
        ).map((e) => 'null').join(',')}).toMap();');
  }
}

class GenerateState extends GenerateElement {
  @override
  String get superType => 'TypedState';

  static String jsStateName(String name) => '_\$${name}TypedState';

  static String initStateName(String name) => '_\$init$name';

  @override
  void generate(StringBuffer buffer, ClassElement element) {
    final manager = InheritanceManager3();
    final stateMixinName = '_\$${element.displayName}';
    final fields = [
      ...manager.getInheritedConcreteMap2(element).values.whereType<PropertyAccessorElement>().map((e) => e.variable),
      ...element.fields,
    ].where((e) => !_excludeFieldsSet.contains(e.name)).toList();

    buffer.writeln('/// State mixin');
    buffer.writeln('''
    mixin $stateMixinName on TypedState{
      @override
      Map toMap() {
        final p = this as ${element.displayName};
        return {
          ${fields.map((field) => "if(p.${field.displayName} != null) '${field.displayName}': p.${field.displayName}").join(',')}
        };
     } 
    }
    ''');

    buffer.writeln('/// Convert state to typed state');
    final _jsStateName = jsStateName(element.displayName);
    buffer.writeln('''
    class $_jsStateName with ComponentState implements ${element.displayName}{
      $_jsStateName(this.state);
      final Map state;

      ${fields.map((field) => "@override ${field.type.getDisplayString(withNullability: false)} get ${field.name} => state['${field.name}'];").join('\n\n')}
    }
    ''');

    final _initStateName = initStateName(element.displayName);
    buffer.writeln('Map get $_initStateName => ${element.displayName}(${element.unnamedConstructor.parameters.where(
          (element) => element.isNotOptional,
        ).map((e) => 'null').join(',')}).toMap();');
  }
}

class GenerateComponent extends GenerateElement {
  @override
  String get superType => 'TypedComponent';

  @override
  void generate(StringBuffer buffer, ClassElement element) {
    final superComponent = element.allSupertypes.firstWhere((element) => element.getDisplayString(withNullability: false).contains(superType));
    final componentMixinName = '_\$${element.displayName}';
    final propsElement = getPropsElement(superComponent);
    final stateElement = getStateElement(superComponent);

    buffer.writeln('/// Register component');
    final widgetName = propsElement.getDisplayString(withNullability: false);
    final registerName = GenerateProps.registerName(widgetName);
    buffer.writeln("final $registerName = registerComponent2(() => ${element.displayName}())..reactClass.displayName = '$widgetName';");

    buffer.writeln('/// Component mixin');
    buffer.writeln('''
    ${mixinDeclaration(componentMixinName, propsElement, stateElement)}{
      @override
      $widgetName typedPropsFactory(Map props) => ${GenerateProps.jsPropsName(widgetName)}(props);

      @override
      Map get defaultProps => ${GenerateProps.defaultPropsName(widgetName)};
      
      ${extraContent(stateElement)}
    }
    ''');
  }

  DartType getPropsElement(InterfaceType superComponent) => superComponent.typeArguments.first;

  DartType getStateElement(InterfaceType superComponent) => null;

  String mixinDeclaration(String componentMixinName, DartType propsElement, DartType stateElement) =>
      'mixin $componentMixinName on $superType<${propsElement.getDisplayString(withNullability: false)}>';

  String extraContent(DartType stateElement) => '';
}

class GenerateStateComponent extends GenerateComponent {
  @override
  String get superType => 'TypedComponent2';

  @override
  String mixinDeclaration(String componentMixinName, DartType propsElement, DartType stateElement) =>
      'mixin $componentMixinName on $superType<${propsElement.getDisplayString(withNullability: false)}, ${stateElement.getDisplayString(withNullability: false)}>';

  @override
  DartType getStateElement(InterfaceType superComponent) => superComponent.typeArguments.last;

  @override
  String extraContent(DartType stateElement) => '''
      @override
      ${stateElement.getDisplayString(withNullability: false)} typedStateFactory(Map state) => ${GenerateState.jsStateName(stateElement.getDisplayString(withNullability: false))}(state);
      
      @override
      Map get initialState => ${GenerateState.initStateName(stateElement.getDisplayString(withNullability: false))};
  ''';
}
