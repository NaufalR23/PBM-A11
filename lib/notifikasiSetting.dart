import 'package:flutter/material.dart';

class NotifSetting extends StatelessWidget {
  const NotifSetting({Key? key}) : super(key: key);

  static const String _title = 'Pengaturan Notifikasi';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class LabeledSwitch extends StatelessWidget {
  const LabeledSwitch({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Switch(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LabeledSwitch(
        label: 'This is the label text',
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        value: _isSelected,
        onChanged: (bool newValue) {
          setState(() {
            _isSelected = newValue;
          });
        },
      ),
    );
  }
}
