# flutter_touch_spin_2

A re-upload of [flutter_touch_spin](https://pub.dev/packages/flutter_touch_spin).
  
Reason: to keep dependencies up to date with the latest version of Reactive Forms, to use in the reactive_touch_spin widget.

Simple number input spinner Widget for Flutter. Inspired by [Bootstrap Touchspin](https://www.virtuosoft.eu/code/bootstrap-touchspin/)

___
<img src="https://github.com/danvick/flutter_touch_spin/blob/master/example/assets/screenshot.png?raw=true" alt="Screenshot" width="200"/>

___

## Getting Started

```dart
TouchSpin(
    min: 5,
    max: 100,
    step: 5,
    value: 10,
    displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
    textStyle: const TextStyle(fontSize: 36),
    iconSize: 48.0,
    addIcon: const Icon(Icons.add_circle_outline),
    subtractIcon: const Icon(Icons.remove_circle_outline),
    iconActiveColor: Colors.green,
    iconDisabledColor: Colors.grey,
    iconPadding: const EdgeInsets.all(20),
    onChanged: (val){
        print(val);
    },
),
```

## Attributes

| Attribute           | Type                 | Default                                    |
| ------------------- | -------------------- | ------------------------------------------ |
| `value`             | `num`                | `1`                                        |
| `min`               | `num`                | `1`                                        |
| `max`               | `num`                | `9999999`                                  |
| `step`              | `num`                | `1`                                        |
| `displayFormat`     | `NumberFormat`       |                                            |
| `textStyle`         | `TextStyle`          | `TextStyle(fontSize: 24)`                  |
| `iconSize`          | `double`             | `24.0`                                     |
| `addIcon`           | `Icon`               | `Icon(Icons.add)`                          |
| `subtractIcon`      | `Icon`               | `Icon(Icons.remove)`                       |
| `iconActiveColor`   | `Color`              | `Theme.of(context).textTheme.button.color` |
| `iconDisabledColor` | `Color`              | `Theme.of(context).disabledColor`          |
| `iconPadding`       | `EdgeInsetsGeometry` | `EdgeInsets.all(4.0)`                      |
| `onChanged`         | `ValueChanged<num>`  |                                            |
