A library for building flutter-style react.

## Getting started

Add `type_react` and `type_react_codegen` to pubspec.yaml

```yaml
dependencies:
  type_react:

dev_dependencies:
  type_react_codegen:
```

Add `index.html` to web directory.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Title</title>
  </head>
  <body>
    <div id="app-container"></div>
    <script src="packages/react/react.js"></script>
    <script src="packages/react/react_dom.js"></script>
    <script defer src="main.dart.js"></script>
  </body>
</html>
```

Add `main.dart` to web directory.

```dart
import 'dart:html';

import 'package:react/react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:type_react_codegen_example/cool_widget.dart';

void main() {

  react_dom.render(
    CoolWidget().r,
    querySelector('#app-container'),
  );
}

```

Run `webdev serve`



## Usage

### Stateless widget boilerplate


```dart
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

```

### Stateful widget boilerplate

```dart
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

```

### Usage

```dart
react_dom.render(
    CoolWidget(
      'HEADLINE',
      text: 'hello',
      fStr: () => 'YAYAYA PASS Function',
      key: 'cool',
      children: [
        CoolWidget2(
          headline: 'Second Headline',
        ).r,
        CoolWidget2(headline: 'Third Headline').r,
      ],
    ).r,
    querySelector('#app-container'),
);
```

See whole [example](https://github.com/cdfq152313/type_react/tree/master/type_react_codegen/example).

### Tips

Use `setTState` to setState.

```dart
void _onClick(_) {
    print('OnClick');
    setTState(CoolWidget2State(counter: tState.counter + 1));
}
```

Use `DomProps` for html dom props.

```dart
button(DomProps()..onClick = _onClick, 'Click');

```

## Additional information
This is an experimental project. Use [over_react](https://pub.dev/packages/over_react) for production.
