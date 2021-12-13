import 'package:collection/collection.dart';
import 'package:react/react.dart';
import 'package:react/react_client.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/react_interop.dart';

abstract class TypedProps {
  TypedProps({this.key, this.ref, this.children});

  final String key;
  final Ref ref;
  final List children;

  Map toMap();

  ReactElement get r;
}

mixin ComponentProps {
  // No setter in ComponentProps
  @override
  noSuchMethod(Invocation invocation) => throw UnimplementedError('ComponentProps Unimplemented');
}

abstract class TypedState {}

abstract class TypedComponent<T extends TypedProps> extends Component2 {
  T typedPropsFactory(Map props);

  T _tProps;

  T get tProps => _tProps ??= typedPropsFactory(props);
}

abstract class TypedStateComponent<T extends TypedProps, S extends TypedState> extends TypedComponent<T> {
  S typedStateFactory(Map props);

  S _tState;

  S get tState => _tState ??= typedStateFactory(props);
}

List autoKey(List elements) {
  return elements.mapIndexed((i, e) {
    if (e is ReactElement && e.key == null) {
      final map = JsBackedMap.from({'key': '$i'});
      return React.cloneElement(e, map.jsObject);
    } else {
      return e;
    }
  }).toList();
}
