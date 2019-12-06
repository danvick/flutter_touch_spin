import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TouchSpin extends StatefulWidget {
  final num value;
  final num min;
  final num max;
  final num step;
  final num iconSize;
  final ValueChanged<num> onChange;
  final NumberFormat displayFormat;
  final Icon subtractIcon;
  final Icon addIcon;
  final EdgeInsetsGeometry iconPadding;
  final TextStyle textStyle;
  final Color iconActiveColor;
  final Color iconDisabledColor;

  const TouchSpin({
    Key key,
    this.value = 1.0,
    this.onChange,
    this.min = 1.0,
    this.max = 9999999.0,
    this.step = 1.0,
    this.iconSize = 24.0,
    this.displayFormat,
    this.subtractIcon = const Icon(Icons.remove),
    this.addIcon = const Icon(Icons.add),
    this.iconPadding = const EdgeInsets.all(4.0),
    this.textStyle = const TextStyle(fontSize: 24),
    this.iconActiveColor,
    this.iconDisabledColor,
  }) : super(key: key);

  @override
  _TouchSpinState createState() => _TouchSpinState();
}

class _TouchSpinState extends State<TouchSpin> {
  num _value;

  bool get minusBtnDisabled =>
      _value <= widget.min || _value - widget.step < widget.min;

  bool get addBtnDisabled =>
      _value >= widget.max || _value + widget.step > widget.max;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          padding: widget.iconPadding,
          iconSize: widget.iconSize,
          color: minusBtnDisabled
              ? widget.iconActiveColor ?? theme.disabledColor
              : widget.iconDisabledColor ?? theme.textTheme.button.color,
          icon: widget.subtractIcon,
          onPressed: minusBtnDisabled
              ? null
              : () {
                  num newVal = _value - widget.step;
                  setState(() {
                    _value = newVal;
                  });
                  if (widget.onChange != null) widget.onChange(newVal);
                },
        ),
        Text(
          '${widget.displayFormat == null ? _value.toString() : widget.displayFormat.format(_value)}',
          style: widget.textStyle,
        ),
        IconButton(
          padding: widget.iconPadding,
          iconSize: widget.iconSize,
          color: addBtnDisabled
              ? widget.iconActiveColor ?? theme.disabledColor
              : widget.iconDisabledColor ?? theme.textTheme.button.color,
          icon: widget.addIcon,
          onPressed: addBtnDisabled
              ? null
              : () {
                  num newVal = _value + widget.step;
                  setState(() {
                    _value = newVal;
                  });
                  if (widget.onChange != null) widget.onChange(newVal);
                },
        ),
      ],
    );
  }
}
