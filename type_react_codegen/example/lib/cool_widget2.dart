import 'package:react/react.dart';
import 'package:react/react_client.dart';
import 'package:type_react/type_react.dart';

part 'cool_widget2.g.dart';

class CoolWidget2 extends TypedProps with _$CoolWidget2 {
  CoolWidget2({
    this.headline,
    Ref<CoolWidget2Component> ref,
    String key,
    List children,
  }) : super(ref: ref, key: key, children: children);
  final String headline;
}

class CoolWidget2State extends TypedState with _$CoolWidget2State {
  CoolWidget2State({this.counter = 0});

  final int counter;
}

class CoolWidget2Component extends TypedComponent2<CoolWidget2, CoolWidget2State> with _$CoolWidget2Component {
  @override
  render() {
    return div(
      {},
      h1({}, tProps.headline),
      div({}, tState.counter ?? 'NO State'),
      button(DomProps()..onClick = _onClick, 'Click'),
    );
  }

  void _onClick(_) {
    print('OnClick');
    setTState(CoolWidget2State(counter: tState.counter + 1));
  }

  void hello() {
    setTState(CoolWidget2State(counter: 3310));
  }
}
