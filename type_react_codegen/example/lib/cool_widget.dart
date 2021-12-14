import 'package:react/react.dart';
import 'package:react/react_client.dart';
import 'package:type_react/type_react.dart';

part 'cool_widget.g.dart';

class CoolWidget extends TypedProps with _$CoolWidget {
  CoolWidget(
    this.headline, {
    this.text,
    this.counter = 9527,
    this.fStr,
    String key,
    List children,
  }) : super(key: key, children: children);

  final String headline;
  final String text;
  final int counter;
  final String Function() fStr;
}

class CoolWidgetComponent extends TypedComponent<CoolWidget> with _$CoolWidgetComponent {
  @override
  render() {
    return div(
      {},
      h1({}, tProps.headline),
      span({}, tProps.text),
      span({}, tProps.counter),
      div({}, tProps.fStr?.call() ?? 'NO FSTR'),
      div({}, tProps.children.isNotEmpty ? tProps.children : 'NO Children'),
    );
  }
}
