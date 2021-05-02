library xlive_switch;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

part 'animation_switch.dart';

part 'thumb_painter.dart';

class XlivSwitch extends StatefulWidget {
  //create a switcher with animation similar https://dribbble.com/shots/5429846-Switcher-XLIV
  const XlivSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.unActiveColor,
    this.thumbColor,
  }) : super(key: key);

  final bool value;

  final ValueChanged<bool> onChanged;

  final Color? activeColor;

  final Color? unActiveColor;

  final Color? thumbColor;

  @override
  _XlivSwitchState createState() => _XlivSwitchState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(FlagProperty('value', value: value, ifTrue: 'on', ifFalse: 'off', showName: true));
    properties.add(ObjectFlagProperty<ValueChanged<bool>>('onChanged', onChanged, ifNull: 'disabled'));
  }
}

class _XlivSwitchState extends State<XlivSwitch> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return _XlivSwitchRenderObjectWidget(
      value: widget.value,
      activeColor: widget.activeColor ?? CupertinoColors.activeGreen,
      onChanged: widget.onChanged,
      thumbColor: widget.thumbColor ?? CupertinoColors.white,
      unActiveColor: widget.unActiveColor ?? CupertinoColors.destructiveRed,
      vsync: this,
    );
  }
}
