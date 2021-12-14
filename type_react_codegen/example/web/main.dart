import 'dart:html';

import 'package:react/react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:type_react_codegen_example/cool_widget.dart';
import 'package:type_react_codegen_example/cool_widget2.dart';

void main() {
  final ref = createRef<CoolWidget2Component>();

  react_dom.render(
    CoolWidget(
      'HEADLINE',
      text: 'hello',
      fStr: () => 'YAYAYA PASS Function',
      key: 'cool',
      children: [
        CoolWidget2(
          ref: ref,
          headline: 'Second Headline',
        ).r,
        CoolWidget2(headline: 'Third Headline').r,
      ],
    ).r,
    querySelector('#app-container'),
  );

  Future.delayed(Duration(seconds: 3), () {
    ref.current.hello();
  });
}
