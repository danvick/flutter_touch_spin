# flutter_touch_spin

Simple number input spinner Widget for Flutter. Inspired by [Bootstrap Touchspin](https://www.virtuosoft.eu/code/bootstrap-touchspin/)

## Getting Started
```dart
TouchSpin(
    min: 5,
    max: 100,
    step: 5,
    value: 10,
    displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
    textStyle: TextStyle(fontSize: 36),
    iconSize: 48.0,
    addIcon: Icon(Icons.add_circle_outline),
    subtractIcon: Icon(Icons.remove_circle_outline),
    iconActiveColor: Colors.green,
    iconDisabledColor: Colors.grey,
    iconPadding: EdgeInsets.all(20),
    onChanged: (val){
        print(val);
    },
),
```

## Attributes
| Attribute | Type  | Default | Required | Description |
|-----------|-------|---------|-------------|----------|
|`value`|`num`|`1`|`false`|--|
|`min`|`num`|`1`|`false`|--|
|`max`|`num`|`9999999`|`false`|--|
|`step`|`num`|`1`|`false`|--|
|`displayFormat`|`NumberFormart`|`1`|`false`|--|
|`textStyle`|`TextStyle`|`1`|`false`|--|
|`iconSize`|`double`|`24.0`|`false`|--|
|`addIcon`|`Icon`|`Icon(Icons.add)`|`false`|--|
|`subtractIcon`|`Icon`|`Icon(Icons.remove)`|`false`|--|
|`iconActiveColor`|`Color`|`Theme.of(context).textTheme.button.color`|`false`|--|
|`iconDisabledColor`|`Color`|`Theme.of(context).disabledColor`|`false`|--|
|`iconPadding`|`EdgeInsetsGeometry`|`EdgeInsets.all(4.0)`|`false`|--|
|`onChanged`|`ValueChanged<num>`||`false`|--|
