import 'dart:html';

import 'package:react/react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:type_react_codegen_example/cool_widget.dart';

void main() {
  final ref = createRef<CoolWidgetComponent>();

  react_dom.render(
    CoolWidget(
      'HEADLINE',
      text: 'hello',
      fStr: () => 'YAYAYA PASS Function',
      key: 'cool',
      ref: ref,
      children: [
        CoolWidget('Second Headline', text: 'moto', counter: 3310).r,
        CoolWidget('Third Headline', text: 'aa', counter: 8787).r,
      ],
    ).r,
    querySelector('#app-container'),
  );

  Future.delayed(Duration(seconds: 3), () {
    ref.current.hello();
  });
}
