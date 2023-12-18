import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_row.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingsScreen extends StatefulWidget {
  final int maxNumber;

  const SettingsScreen({
    required this.maxNumber,
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(
                maxNumber: maxNumber,
                onChangedMaxNumber: onChangedMaxNumber,
                onPressedButton: onPressedButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onChangedMaxNumber(double val) {
    setState(() {
      maxNumber = val;
    });
  }

  void onPressedButton() {
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;

  const _Body({
    required this.maxNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NumberRow(
        number: maxNumber.toInt(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final ValueChanged<double>? onChangedMaxNumber;
  final VoidCallback onPressedButton;

  const _Footer({
    required this.maxNumber,
    required this.onChangedMaxNumber,
    required this.onPressedButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
          value: maxNumber,
          min: 1000,
          max: 100000,
          onChanged: onChangedMaxNumber,
        ),
        ElevatedButton(
          onPressed: onPressedButton,
          style: ElevatedButton.styleFrom(
            primary: RED_COLOR,
          ),
          child: Text(
            '저장',
            style: TextStyle(color: WHITE_COLOR),
          ),
        )
      ],
    );
  }
}
