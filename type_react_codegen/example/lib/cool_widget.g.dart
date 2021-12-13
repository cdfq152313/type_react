// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cool_widget.dart';

// **************************************************************************
// TypeReactGenerator
// **************************************************************************

/// Register component
final _$CoolWidgetRegister = registerComponent2(() => CoolWidgetComponent());

/// Convert props to ReactElement.
mixin _$CoolWidget on TypedProps {
  @override
  ReactElement get r {
    if (children == null) {
      return _$CoolWidgetRegister(toMap());
    } else {
      return _$CoolWidgetRegister(toMap(), autoKey(children));
    }
  }

  @override
  Map toMap() {
    final p = this as CoolWidget;
    return {
      if (p.key != null) 'key': p.key,
      if (p.ref != null) 'ref': p.ref,
      if (p.headline != null) 'headline': p.headline,
      if (p.text != null) 'text': p.text,
      if (p.counter != null) 'counter': p.counter,
      if (p.fStr != null) 'fStr': p.fStr
    };
  }
}

/// Convert props to typed props
class _$CoolWidgetTypedProps with ComponentProps implements CoolWidget {
  _$CoolWidgetTypedProps(this.props);
  final Map props;

  @override
  List<dynamic> get children => props['children'];

  @override
  String get headline => props['headline'];

  @override
  String get text => props['text'];

  @override
  int get counter => props['counter'];

  @override
  String Function() get fStr => props['fStr'];
}

mixin _$CoolWidgetComponent on TypedComponent<CoolWidget> {
  @override
  CoolWidget typedPropsFactory(Map props) => _$CoolWidgetTypedProps(props);

  @override
  Map get defaultProps => CoolWidget(null).toMap();
}