import 'package:flutter/material.dart';

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

class NotifSetting extends StatefulWidget {
  const NotifSetting({Key? key}) : super(key: key);

  @override
  State<NotifSetting> createState() => _NotifSettingState();
}

class _NotifSettingState extends State<NotifSetting> {
  bool _isSelected = false;

  static const String _title = 'Pengaturan Notifikasi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF197BFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Atur Notifikasi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 25)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.8688,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child : Column(
                      children: [
                        Container(
                          child: LabeledSwitch(
                            label: 'Tampilkan Notifikasi',
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            value: _isSelected,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: LabeledSwitch(
                            label: 'Izinkan Lencana Notifikasi',
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            value: _isSelected,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: LabeledSwitch(
                            label: 'Suara Notifikasi',
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            value: _isSelected,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: LabeledSwitch(
                            label: 'Getaran Notifikasi',
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            value: _isSelected,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: LabeledSwitch(
                            label: 'Notifikasi Melayang',
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            value: _isSelected,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSelected = newValue;
                              });
                            },
                          ),
                        ),
                      ]
                      ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
