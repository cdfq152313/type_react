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

  ReactDartComponentFactoryProxy2<Component2> get factoryProxy;

  ReactElement get r {
    if (children == null) {
      return factoryProxy(toMap());
    } else {
      return factoryProxy(toMap(), autoKey(runtimeType.toString(), children));
    }
  }
}

mixin ComponentProps {
  // No setter in ComponentProps
  @override
  noSuchMethod(Invocation invocation) => throw UnimplementedError('ComponentProps Unimplemented');
}

mixin ComponentState {
  // No setter in ComponentState
  @override
  noSuchMethod(Invocation invocation) => throw UnimplementedError('ComponentState Unimplemented');
}

abstract class TypedState {
  Map toMap();
}

abstract class TypedComponent<T extends TypedProps> extends Component2 {
  T typedPropsFactory(Map props);

  T get tProps => typedPropsFactory(props);
}

abstract class TypedComponent2<T extends TypedProps, S extends TypedState> extends TypedComponent<T> {
  S typedStateFactory(Map state);

  S get tState => typedStateFactory(state);

  void setTState(S s) => setState(s.toMap());
}

List autoKey(String tag, List elements) {
  return elements.mapIndexed((i, e) {
    if (e is ReactElement && e.key == null) {
      final map = JsBackedMap.from({'key': '$tag-$i'});
      return React.cloneElement(e, map.jsObject);
    } else {
      return e;
    }
  }).toList();
}
