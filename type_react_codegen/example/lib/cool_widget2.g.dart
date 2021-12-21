// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cool_widget2.dart';

// **************************************************************************
// TypeReactGenerator
// **************************************************************************

/// Convert props to ReactElement.
mixin _$CoolWidget2 on TypedProps {
  @override
  ReactElement get r {
    if (children == null) {
      return _$CoolWidget2Register(toMap());
    } else {
      return _$CoolWidget2Register(
          toMap(), autoKey(runtimeType.toString(), children));
    }
  }

  @override
  Map toMap() {
    final p = this as CoolWidget2;
    return {
      if (p.key != null) 'key': p.key,
      if (p.ref != null) 'ref': p.ref,
      if (p.headline != null) 'headline': p.headline
    };
  }
}

/// Convert props to typed props
class _$CoolWidget2TypedProps with ComponentProps implements CoolWidget2 {
  _$CoolWidget2TypedProps(this.props);
  final Map props;

  @override
  List<dynamic> get children => props['children'];

  @override
  String get headline => props['headline'];
}

Map get _$defaultCoolWidget2Props => CoolWidget2().toMap();

/// State mixin
mixin _$CoolWidget2State on TypedState {
  @override
  Map toMap() {
    final p = this as CoolWidget2State;
    return {if (p.counter != null) 'counter': p.counter};
  }
}

/// Convert state to typed state
class _$CoolWidget2StateTypedState
    with ComponentState
    implements CoolWidget2State {
  _$CoolWidget2StateTypedState(this.state);
  final Map state;

  @override
  int get counter => state['counter'];
}

Map get _$initCoolWidget2State => CoolWidget2State().toMap();

/// Register component
final _$CoolWidget2Register = registerComponent2(() => CoolWidget2Component())
  ..reactClass.displayName = 'CoolWidget2';

/// Component mixin
mixin _$CoolWidget2Component on TypedComponent2<CoolWidget2, CoolWidget2State> {
  @override
  CoolWidget2 typedPropsFactory(Map props) => _$CoolWidget2TypedProps(props);

  @override
  Map get defaultProps => _$defaultCoolWidget2Props;

  @override
  CoolWidget2State typedStateFactory(Map state) =>
      _$CoolWidget2StateTypedState(state);

  @override
  Map get initialState => _$initCoolWidget2State;
}
