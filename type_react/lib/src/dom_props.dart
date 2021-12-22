import 'dart:collection';

import 'package:react/react.dart';
import 'package:react/react_client/react_interop.dart';

class DomProps extends MapMixin {
  final propsMap = <String, dynamic>{};

  @override
  operator [](Object key) => propsMap[key];

  @override
  void operator []=(key, value) => value == null ? propsMap.remove(key) : propsMap[key] = value;

  @override
  void clear() => propsMap.clear();

  @override
  Iterable get keys => propsMap.keys;

  @override
  remove(Object key) => propsMap.remove(key);

  String get key => propsMap['key'];

  set key(String v) => this['key'] = v;

  Ref get ref => propsMap['ref'];

  set ref(Ref v) => this['ref'] = v;

  int get cols => propsMap['cols'];

  set cols(int v) => this['cols'] = v;

  int get minLength => propsMap['minLength'];

  set minLength(int v) => this['minLength'] = v;

  int get rows => propsMap['rows'];

  set rows(int v) => this['rows'] = v;

  int get size => propsMap['size'];

  set size(int v) => this['size'] = v;

  int get span => propsMap['span'];

  set span(int v) => this['span'] = v;

  int get start => propsMap['start'];

  set start(int v) => this['start'] = v;

  num get high => propsMap['high'];

  set high(num v) => this['high'] = v;

  num get low => propsMap['low'];

  set low(num v) => this['low'] = v;

  num get marginHeight => propsMap['marginHeight'];

  set marginHeight(num v) => this['marginHeight'] = v;

  num get marginWidth => propsMap['marginWidth'];

  set marginWidth(num v) => this['marginWidth'] = v;

  num get optimum => propsMap['optimum'];

  set optimum(num v) => this['optimum'] = v;

  bool get htmlDefault => propsMap['htmlDefault'];

  set htmlDefault(bool v) => this['htmlDefault'] = v;

  String get htmlIs => propsMap['htmlIs'];

  set htmlIs(String v) => this['htmlIs'] = v;

  bool get allowFullScreen => propsMap['allowFullScreen'];

  set allowFullScreen(bool v) => this['allowFullScreen'] = v;

  bool get async => propsMap['async'];

  set async(bool v) => this['async'] = v;

  bool get autoPlay => propsMap['autoPlay'];

  set autoPlay(bool v) => this['autoPlay'] = v;

  bool get checked => propsMap['checked'];

  set checked(bool v) => this['checked'] = v;

  bool get controls => propsMap['controls'];

  set controls(bool v) => this['controls'] = v;

  bool get defer => propsMap['defer'];

  set defer(bool v) => this['defer'] = v;

  bool get disabled => propsMap['disabled'];

  set disabled(bool v) => this['disabled'] = v;

  bool get formNoValidate => propsMap['formNoValidate'];

  set formNoValidate(bool v) => this['formNoValidate'] = v;

  bool get hidden => propsMap['hidden'];

  set hidden(bool v) => this['hidden'] = v;

  bool get loop => propsMap['loop'];

  set loop(bool v) => this['loop'] = v;

  bool get multiple => propsMap['multiple'];

  set multiple(bool v) => this['multiple'] = v;

  bool get muted => propsMap['muted'];

  set muted(bool v) => this['muted'] = v;

  bool get noValidate => propsMap['noValidate'];

  set noValidate(bool v) => this['noValidate'] = v;

  bool get open => propsMap['open'];

  set open(bool v) => this['open'] = v;

  bool get readOnly => propsMap['readOnly'];

  set readOnly(bool v) => this['readOnly'] = v;

  bool get required => propsMap['required'];

  set required(bool v) => this['required'] = v;

  bool get reversed => propsMap['reversed'];

  set reversed(bool v) => this['reversed'] = v;

  bool get scoped => propsMap['scoped'];

  set scoped(bool v) => this['scoped'] = v;

  bool get seamless => propsMap['seamless'];

  set seamless(bool v) => this['seamless'] = v;

  bool get selected => propsMap['selected'];

  set selected(bool v) => this['selected'] = v;

  String get challenge => propsMap['challenge'];

  set challenge(String v) => this['challenge'] = v;

  String get cite => propsMap['cite'];

  set cite(String v) => this['cite'] = v;

  String get className => propsMap['className'];

  set className(String v) => this['className'] = v;

  String get controlsList => propsMap['controlsList'];

  set controlsList(String v) => this['controlsList'] = v;

  String get formAction => propsMap['formAction'];

  set formAction(String v) => this['formAction'] = v;

  String get formEncType => propsMap['formEncType'];

  set formEncType(String v) => this['formEncType'] = v;

  String get formMethod => propsMap['formMethod'];

  set formMethod(String v) => this['formMethod'] = v;

  String get formTarget => propsMap['formTarget'];

  set formTarget(String v) => this['formTarget'] = v;

  String get headers => propsMap['headers'];

  set headers(String v) => this['headers'] = v;

  String get id => propsMap['id'];

  set id(String v) => this['id'] = v;

  String get inputMode => propsMap['inputMode'];

  set inputMode(String v) => this['inputMode'] = v;

  String get integrity => propsMap['integrity'];

  set integrity(String v) => this['integrity'] = v;

  String get keyParams => propsMap['keyParams'];

  set keyParams(String v) => this['keyParams'] = v;

  String get keyType => propsMap['keyType'];

  set keyType(String v) => this['keyType'] = v;

  String get kind => propsMap['kind'];

  set kind(String v) => this['kind'] = v;

  String get nonce => propsMap['nonce'];

  set nonce(String v) => this['nonce'] = v;

  String get srcLang => propsMap['srcLang'];

  set srcLang(String v) => this['srcLang'] = v;

  String get summary => propsMap['summary'];

  set summary(String v) => this['summary'] = v;

  String get title => propsMap['title'];

  set title(String v) => this['title'] = v;

  String get wrap => propsMap['wrap'];

  set wrap(String v) => this['wrap'] = v;

  dynamic get accept => propsMap['accept'];

  set accept(dynamic v) => this['accept'] = v;

  dynamic get acceptCharset => propsMap['acceptCharset'];

  set acceptCharset(dynamic v) => this['acceptCharset'] = v;

  dynamic get accessKey => propsMap['accessKey'];

  set accessKey(dynamic v) => this['accessKey'] = v;

  dynamic get action => propsMap['action'];

  set action(dynamic v) => this['action'] = v;

  dynamic get allowTransparency => propsMap['allowTransparency'];

  set allowTransparency(dynamic v) => this['allowTransparency'] = v;

  dynamic get alt => propsMap['alt'];

  set alt(dynamic v) => this['alt'] = v;

  dynamic get autoComplete => propsMap['autoComplete'];

  set autoComplete(dynamic v) => this['autoComplete'] = v;

  dynamic get capture => propsMap['capture'];

  set capture(dynamic v) => this['capture'] = v;

  dynamic get cellPadding => propsMap['cellPadding'];

  set cellPadding(dynamic v) => this['cellPadding'] = v;

  dynamic get cellSpacing => propsMap['cellSpacing'];

  set cellSpacing(dynamic v) => this['cellSpacing'] = v;

  dynamic get charSet => propsMap['charSet'];

  set charSet(dynamic v) => this['charSet'] = v;

  dynamic get classID => propsMap['classID'];

  set classID(dynamic v) => this['classID'] = v;

  dynamic get colSpan => propsMap['colSpan'];

  set colSpan(dynamic v) => this['colSpan'] = v;

  dynamic get content => propsMap['content'];

  set content(dynamic v) => this['content'] = v;

  dynamic get contentEditable => propsMap['contentEditable'];

  set contentEditable(dynamic v) => this['contentEditable'] = v;

  dynamic get contextMenu => propsMap['contextMenu'];

  set contextMenu(dynamic v) => this['contextMenu'] = v;

  dynamic get coords => propsMap['coords'];

  set coords(dynamic v) => this['coords'] = v;

  dynamic get crossOrigin => propsMap['crossOrigin'];

  set crossOrigin(dynamic v) => this['crossOrigin'] = v;

  dynamic get data => propsMap['data'];

  set data(dynamic v) => this['data'] = v;

  dynamic get dateTime => propsMap['dateTime'];

  set dateTime(dynamic v) => this['dateTime'] = v;

  dynamic get dir => propsMap['dir'];

  set dir(dynamic v) => this['dir'] = v;

  dynamic get download => propsMap['download'];

  set download(dynamic v) => this['download'] = v;

  dynamic get draggable => propsMap['draggable'];

  set draggable(dynamic v) => this['draggable'] = v;

  dynamic get encType => propsMap['encType'];

  set encType(dynamic v) => this['encType'] = v;

  dynamic get form => propsMap['form'];

  set form(dynamic v) => this['form'] = v;

  dynamic get frameBorder => propsMap['frameBorder'];

  set frameBorder(dynamic v) => this['frameBorder'] = v;

  dynamic get height => propsMap['height'];

  set height(dynamic v) => this['height'] = v;

  dynamic get href => propsMap['href'];

  set href(dynamic v) => this['href'] = v;

  dynamic get hrefLang => propsMap['hrefLang'];

  set hrefLang(dynamic v) => this['hrefLang'] = v;

  dynamic get htmlFor => propsMap['htmlFor'];

  set htmlFor(dynamic v) => this['htmlFor'] = v;

  dynamic get httpEquiv => propsMap['httpEquiv'];

  set httpEquiv(dynamic v) => this['httpEquiv'] = v;

  dynamic get icon => propsMap['icon'];

  set icon(dynamic v) => this['icon'] = v;

  dynamic get label => propsMap['label'];

  set label(dynamic v) => this['label'] = v;

  dynamic get lang => propsMap['lang'];

  set lang(dynamic v) => this['lang'] = v;

  dynamic get list => propsMap['list'];

  set list(dynamic v) => this['list'] = v;

  dynamic get manifest => propsMap['manifest'];

  set manifest(dynamic v) => this['manifest'] = v;

  dynamic get max => propsMap['max'];

  set max(dynamic v) => this['max'] = v;

  dynamic get maxLength => propsMap['maxLength'];

  set maxLength(dynamic v) => this['maxLength'] = v;

  dynamic get media => propsMap['media'];

  set media(dynamic v) => this['media'] = v;

  dynamic get mediaGroup => propsMap['mediaGroup'];

  set mediaGroup(dynamic v) => this['mediaGroup'] = v;

  dynamic get method => propsMap['method'];

  set method(dynamic v) => this['method'] = v;

  dynamic get min => propsMap['min'];

  set min(dynamic v) => this['min'] = v;

  dynamic get name => propsMap['name'];

  set name(dynamic v) => this['name'] = v;

  dynamic get pattern => propsMap['pattern'];

  set pattern(dynamic v) => this['pattern'] = v;

  dynamic get placeholder => propsMap['placeholder'];

  set placeholder(dynamic v) => this['placeholder'] = v;

  dynamic get poster => propsMap['poster'];

  set poster(dynamic v) => this['poster'] = v;

  dynamic get preload => propsMap['preload'];

  set preload(dynamic v) => this['preload'] = v;

  dynamic get radioGroup => propsMap['radioGroup'];

  set radioGroup(dynamic v) => this['radioGroup'] = v;

  dynamic get rel => propsMap['rel'];

  set rel(dynamic v) => this['rel'] = v;

  dynamic get role => propsMap['role'];

  set role(dynamic v) => this['role'] = v;

  dynamic get rowSpan => propsMap['rowSpan'];

  set rowSpan(dynamic v) => this['rowSpan'] = v;

  dynamic get sandbox => propsMap['sandbox'];

  set sandbox(dynamic v) => this['sandbox'] = v;

  dynamic get scope => propsMap['scope'];

  set scope(dynamic v) => this['scope'] = v;

  dynamic get scrolling => propsMap['scrolling'];

  set scrolling(dynamic v) => this['scrolling'] = v;

  dynamic get shape => propsMap['shape'];

  set shape(dynamic v) => this['shape'] = v;

  dynamic get sizes => propsMap['sizes'];

  set sizes(dynamic v) => this['sizes'] = v;

  dynamic get spellCheck => propsMap['spellCheck'];

  set spellCheck(dynamic v) => this['spellCheck'] = v;

  dynamic get src => propsMap['src'];

  set src(dynamic v) => this['src'] = v;

  dynamic get srcDoc => propsMap['srcDoc'];

  set srcDoc(dynamic v) => this['srcDoc'] = v;

  dynamic get srcSet => propsMap['srcSet'];

  set srcSet(dynamic v) => this['srcSet'] = v;

  dynamic get step => propsMap['step'];

  set step(dynamic v) => this['step'] = v;

  dynamic get tabIndex => propsMap['tabIndex'];

  set tabIndex(dynamic v) => this['tabIndex'] = v;

  dynamic get target => propsMap['target'];

  set target(dynamic v) => this['target'] = v;

  dynamic get type => propsMap['type'];

  set type(dynamic v) => this['type'] = v;

  dynamic get useMap => propsMap['useMap'];

  set useMap(dynamic v) => this['useMap'] = v;

  dynamic get value => propsMap['value'];

  set value(dynamic v) => this['value'] = v;

  dynamic get width => propsMap['width'];

  set width(dynamic v) => this['width'] = v;

  dynamic get wmode => propsMap['wmode'];

  set wmode(dynamic v) => this['wmode'] = v;

  AnimationEventCallback get onAnimationEnd => propsMap['onAnimationEnd'];

  set onAnimationEnd(AnimationEventCallback v) => this['onAnimationEnd'] = v;

  AnimationEventCallback get onAnimationIteration => propsMap['onAnimationIteration'];

  set onAnimationIteration(AnimationEventCallback v) => this['onAnimationIteration'] = v;

  AnimationEventCallback get onAnimationStart => propsMap['onAnimationStart'];

  set onAnimationStart(AnimationEventCallback v) => this['onAnimationStart'] = v;

  ClipboardEventCallback get onCopy => propsMap['onCopy'];

  set onCopy(ClipboardEventCallback v) => this['onCopy'] = v;

  ClipboardEventCallback get onCut => propsMap['onCut'];

  set onCut(ClipboardEventCallback v) => this['onCut'] = v;

  ClipboardEventCallback get onPaste => propsMap['onPaste'];

  set onPaste(ClipboardEventCallback v) => this['onPaste'] = v;

  KeyboardEventCallback get onKeyDown => propsMap['onKeyDown'];

  set onKeyDown(KeyboardEventCallback v) => this['onKeyDown'] = v;

  KeyboardEventCallback get onKeyPress => propsMap['onKeyPress'];

  set onKeyPress(KeyboardEventCallback v) => this['onKeyPress'] = v;

  KeyboardEventCallback get onKeyUp => propsMap['onKeyUp'];

  set onKeyUp(KeyboardEventCallback v) => this['onKeyUp'] = v;

  FocusEventCallback get onFocus => propsMap['onFocus'];

  set onFocus(FocusEventCallback v) => this['onFocus'] = v;

  FocusEventCallback get onBlur => propsMap['onBlur'];

  set onBlur(FocusEventCallback v) => this['onBlur'] = v;

  FormEventCallback get onChange => propsMap['onChange'];

  set onChange(FormEventCallback v) => this['onChange'] = v;

  FormEventCallback get onInput => propsMap['onInput'];

  set onInput(FormEventCallback v) => this['onInput'] = v;

  FormEventCallback get onSubmit => propsMap['onSubmit'];

  set onSubmit(FormEventCallback v) => this['onSubmit'] = v;

  FormEventCallback get onReset => propsMap['onReset'];

  set onReset(FormEventCallback v) => this['onReset'] = v;

  MouseEventCallback get onClick => propsMap['onClick'];

  set onClick(MouseEventCallback v) => this['onClick'] = v;

  MouseEventCallback get onContextMenu => propsMap['onContextMenu'];

  set onContextMenu(MouseEventCallback v) => this['onContextMenu'] = v;

  MouseEventCallback get onDoubleClick => propsMap['onDoubleClick'];

  set onDoubleClick(MouseEventCallback v) => this['onDoubleClick'] = v;

  MouseEventCallback get onDrag => propsMap['onDrag'];

  set onDrag(MouseEventCallback v) => this['onDrag'] = v;

  MouseEventCallback get onDragEnd => propsMap['onDragEnd'];

  set onDragEnd(MouseEventCallback v) => this['onDragEnd'] = v;

  MouseEventCallback get onDragEnter => propsMap['onDragEnter'];

  set onDragEnter(MouseEventCallback v) => this['onDragEnter'] = v;

  MouseEventCallback get onDragExit => propsMap['onDragExit'];

  set onDragExit(MouseEventCallback v) => this['onDragExit'] = v;

  MouseEventCallback get onDragLeave => propsMap['onDragLeave'];

  set onDragLeave(MouseEventCallback v) => this['onDragLeave'] = v;

  MouseEventCallback get onDragOver => propsMap['onDragOver'];

  set onDragOver(MouseEventCallback v) => this['onDragOver'] = v;

  MouseEventCallback get onDragStart => propsMap['onDragStart'];

  set onDragStart(MouseEventCallback v) => this['onDragStart'] = v;

  MouseEventCallback get onDrop => propsMap['onDrop'];

  set onDrop(MouseEventCallback v) => this['onDrop'] = v;

  MouseEventCallback get onMouseDown => propsMap['onMouseDown'];

  set onMouseDown(MouseEventCallback v) => this['onMouseDown'] = v;

  MouseEventCallback get onMouseEnter => propsMap['onMouseEnter'];

  set onMouseEnter(MouseEventCallback v) => this['onMouseEnter'] = v;

  MouseEventCallback get onMouseLeave => propsMap['onMouseLeave'];

  set onMouseLeave(MouseEventCallback v) => this['onMouseLeave'] = v;

  MouseEventCallback get onMouseMove => propsMap['onMouseMove'];

  set onMouseMove(MouseEventCallback v) => this['onMouseMove'] = v;

  MouseEventCallback get onMouseOut => propsMap['onMouseOut'];

  set onMouseOut(MouseEventCallback v) => this['onMouseOut'] = v;

  MouseEventCallback get onMouseOver => propsMap['onMouseOver'];

  set onMouseOver(MouseEventCallback v) => this['onMouseOver'] = v;

  MouseEventCallback get onMouseUp => propsMap['onMouseUp'];

  set onMouseUp(MouseEventCallback v) => this['onMouseUp'] = v;

  PointerEventCallback get onPointerCancel => propsMap['onPointerCancel'];

  set onPointerCancel(PointerEventCallback v) => this['onPointerCancel'] = v;

  PointerEventCallback get onPointerDown => propsMap['onPointerDown'];

  set onPointerDown(PointerEventCallback v) => this['onPointerDown'] = v;

  PointerEventCallback get onPointerEnter => propsMap['onPointerEnter'];

  set onPointerEnter(PointerEventCallback v) => this['onPointerEnter'] = v;

  PointerEventCallback get onPointerLeave => propsMap['onPointerLeave'];

  set onPointerLeave(PointerEventCallback v) => this['onPointerLeave'] = v;

  PointerEventCallback get onPointerMove => propsMap['onPointerMove'];

  set onPointerMove(PointerEventCallback v) => this['onPointerMove'] = v;

  PointerEventCallback get onPointerOver => propsMap['onPointerOver'];

  set onPointerOver(PointerEventCallback v) => this['onPointerOver'] = v;

  PointerEventCallback get onPointerOut => propsMap['onPointerOut'];

  set onPointerOut(PointerEventCallback v) => this['onPointerOut'] = v;

  PointerEventCallback get onPointerUp => propsMap['onPointerUp'];

  set onPointerUp(PointerEventCallback v) => this['onPointerUp'] = v;

  TouchEventCallback get onTouchCancel => propsMap['onTouchCancel'];

  set onTouchCancel(TouchEventCallback v) => this['onTouchCancel'] = v;

  TouchEventCallback get onTouchEnd => propsMap['onTouchEnd'];

  set onTouchEnd(TouchEventCallback v) => this['onTouchEnd'] = v;

  TouchEventCallback get onTouchMove => propsMap['onTouchMove'];

  set onTouchMove(TouchEventCallback v) => this['onTouchMove'] = v;

  TouchEventCallback get onTouchStart => propsMap['onTouchStart'];

  set onTouchStart(TouchEventCallback v) => this['onTouchStart'] = v;

  TransitionEventCallback get onTransitionEnd => propsMap['onTransitionEnd'];

  set onTransitionEnd(TransitionEventCallback v) => this['onTransitionEnd'] = v;

  UIEventCallback get onScroll => propsMap['onScroll'];

  set onScroll(UIEventCallback v) => this['onScroll'] = v;

  WheelEventCallback get onWheel => propsMap['onWheel'];

  set onWheel(WheelEventCallback v) => this['onWheel'] = v;

  ClipboardEventCallback get onCopyCapture => propsMap['onCopyCapture'];

  set onCopyCapture(ClipboardEventCallback v) => this['onCopyCapture'] = v;

  ClipboardEventCallback get onCutCapture => propsMap['onCutCapture'];

  set onCutCapture(ClipboardEventCallback v) => this['onCutCapture'] = v;

  ClipboardEventCallback get onPasteCapture => propsMap['onPasteCapture'];

  set onPasteCapture(ClipboardEventCallback v) => this['onPasteCapture'] = v;

  KeyboardEventCallback get onKeyDownCapture => propsMap['onKeyDownCapture'];

  set onKeyDownCapture(KeyboardEventCallback v) => this['onKeyDownCapture'] = v;

  KeyboardEventCallback get onKeyPressCapture => propsMap['onKeyPressCapture'];

  set onKeyPressCapture(KeyboardEventCallback v) => this['onKeyPressCapture'] = v;

  KeyboardEventCallback get onKeyUpCapture => propsMap['onKeyUpCapture'];

  set onKeyUpCapture(KeyboardEventCallback v) => this['onKeyUpCapture'] = v;

  FocusEventCallback get onFocusCapture => propsMap['onFocusCapture'];

  set onFocusCapture(FocusEventCallback v) => this['onFocusCapture'] = v;

  FocusEventCallback get onBlurCapture => propsMap['onBlurCapture'];

  set onBlurCapture(FocusEventCallback v) => this['onBlurCapture'] = v;

  FormEventCallback get onChangeCapture => propsMap['onChangeCapture'];

  set onChangeCapture(FormEventCallback v) => this['onChangeCapture'] = v;

  FormEventCallback get onInputCapture => propsMap['onInputCapture'];

  set onInputCapture(FormEventCallback v) => this['onInputCapture'] = v;

  FormEventCallback get onSubmitCapture => propsMap['onSubmitCapture'];

  set onSubmitCapture(FormEventCallback v) => this['onSubmitCapture'] = v;

  FormEventCallback get onResetCapture => propsMap['onResetCapture'];

  set onResetCapture(FormEventCallback v) => this['onResetCapture'] = v;

  MouseEventCallback get onClickCapture => propsMap['onClickCapture'];

  set onClickCapture(MouseEventCallback v) => this['onClickCapture'] = v;

  MouseEventCallback get onContextMenuCapture => propsMap['onContextMenuCapture'];

  set onContextMenuCapture(MouseEventCallback v) => this['onContextMenuCapture'] = v;

  MouseEventCallback get onDoubleClickCapture => propsMap['onDoubleClickCapture'];

  set onDoubleClickCapture(MouseEventCallback v) => this['onDoubleClickCapture'] = v;

  MouseEventCallback get onDragCapture => propsMap['onDragCapture'];

  set onDragCapture(MouseEventCallback v) => this['onDragCapture'] = v;

  MouseEventCallback get onDragEndCapture => propsMap['onDragEndCapture'];

  set onDragEndCapture(MouseEventCallback v) => this['onDragEndCapture'] = v;

  MouseEventCallback get onDragEnterCapture => propsMap['onDragEnterCapture'];

  set onDragEnterCapture(MouseEventCallback v) => this['onDragEnterCapture'] = v;

  MouseEventCallback get onDragExitCapture => propsMap['onDragExitCapture'];

  set onDragExitCapture(MouseEventCallback v) => this['onDragExitCapture'] = v;

  MouseEventCallback get onDragLeaveCapture => propsMap['onDragLeaveCapture'];

  set onDragLeaveCapture(MouseEventCallback v) => this['onDragLeaveCapture'] = v;

  MouseEventCallback get onDragOverCapture => propsMap['onDragOverCapture'];

  set onDragOverCapture(MouseEventCallback v) => this['onDragOverCapture'] = v;

  MouseEventCallback get onDragStartCapture => propsMap['onDragStartCapture'];

  set onDragStartCapture(MouseEventCallback v) => this['onDragStartCapture'] = v;

  MouseEventCallback get onDropCapture => propsMap['onDropCapture'];

  set onDropCapture(MouseEventCallback v) => this['onDropCapture'] = v;

  MouseEventCallback get onMouseDownCapture => propsMap['onMouseDownCapture'];

  set onMouseDownCapture(MouseEventCallback v) => this['onMouseDownCapture'] = v;

  MouseEventCallback get onMouseEnterCapture => propsMap['onMouseEnterCapture'];

  set onMouseEnterCapture(MouseEventCallback v) => this['onMouseEnterCapture'] = v;

  MouseEventCallback get onMouseLeaveCapture => propsMap['onMouseLeaveCapture'];

  set onMouseLeaveCapture(MouseEventCallback v) => this['onMouseLeaveCapture'] = v;

  MouseEventCallback get onMouseMoveCapture => propsMap['onMouseMoveCapture'];

  set onMouseMoveCapture(MouseEventCallback v) => this['onMouseMoveCapture'] = v;

  MouseEventCallback get onMouseOutCapture => propsMap['onMouseOutCapture'];

  set onMouseOutCapture(MouseEventCallback v) => this['onMouseOutCapture'] = v;

  MouseEventCallback get onMouseOverCapture => propsMap['onMouseOverCapture'];

  set onMouseOverCapture(MouseEventCallback v) => this['onMouseOverCapture'] = v;

  MouseEventCallback get onMouseUpCapture => propsMap['onMouseUpCapture'];

  set onMouseUpCapture(MouseEventCallback v) => this['onMouseUpCapture'] = v;

  PointerEventCallback get onGotPointerCapture => propsMap['onGotPointerCapture'];

  set onGotPointerCapture(PointerEventCallback v) => this['onGotPointerCapture'] = v;

  PointerEventCallback get onLostPointerCapture => propsMap['onLostPointerCapture'];

  set onLostPointerCapture(PointerEventCallback v) => this['onLostPointerCapture'] = v;

  TouchEventCallback get onTouchCancelCapture => propsMap['onTouchCancelCapture'];

  set onTouchCancelCapture(TouchEventCallback v) => this['onTouchCancelCapture'] = v;

  TouchEventCallback get onTouchEndCapture => propsMap['onTouchEndCapture'];

  set onTouchEndCapture(TouchEventCallback v) => this['onTouchEndCapture'] = v;

  TouchEventCallback get onTouchMoveCapture => propsMap['onTouchMoveCapture'];

  set onTouchMoveCapture(TouchEventCallback v) => this['onTouchMoveCapture'] = v;

  TouchEventCallback get onTouchStartCapture => propsMap['onTouchStartCapture'];

  set onTouchStartCapture(TouchEventCallback v) => this['onTouchStartCapture'] = v;

  UIEventCallback get onScrollCapture => propsMap['onScrollCapture'];

  set onScrollCapture(UIEventCallback v) => this['onScrollCapture'] = v;

  WheelEventCallback get onWheelCapture => propsMap['onWheelCapture'];

  set onWheelCapture(WheelEventCallback v) => this['onWheelCapture'] = v;

  bool get defaultChecked => propsMap['defaultChecked'];

  set defaultChecked(bool v) => this['defaultChecked'] = v;

  dynamic get defaultValue => propsMap['defaultValue'];

  set defaultValue(dynamic v) => this['defaultValue'] = v;

  bool get autoFocus => propsMap['autoFocus'];

  set autoFocus(bool v) => this['autoFocus'] = v;
}

typedef DomEventCallback(SyntheticEvent event);
typedef AnimationEventCallback(SyntheticAnimationEvent event);
typedef ClipboardEventCallback(SyntheticClipboardEvent event);
typedef KeyboardEventCallback(SyntheticKeyboardEvent event);
typedef FocusEventCallback(SyntheticFocusEvent event);
typedef FormEventCallback(SyntheticFormEvent event);
typedef MouseEventCallback(SyntheticMouseEvent event);
typedef PointerEventCallback(SyntheticPointerEvent event);
typedef TouchEventCallback(SyntheticTouchEvent event);
typedef TransitionEventCallback(SyntheticTransitionEvent event);
typedef UIEventCallback(SyntheticUIEvent event);
typedef WheelEventCallback(SyntheticWheelEvent event);
