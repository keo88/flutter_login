import 'package:flutter/material.dart';
import 'package:flutter_login/src/models/radio_user_form_field.dart';

class RadioFormField extends StatefulWidget {
  final TextEditingController? controller;
  final RadioUserFormField formField;
  const RadioFormField({Key? key, required this.controller, required this.formField}) : super(key: key);

  @override
  State<RadioFormField> createState() => _RadioFormFieldState();
}

enum SingingCharacter {lafayette, jefferson }

class _RadioFormFieldState extends State<RadioFormField> {
  late String currentValue;
  TextEditingController? controller;

  late List<String> displayNames;
  late List<String> names;
  late List<int> range;

  @override
  void initState() {
    super.initState();

    controller = widget.controller;

    displayNames = widget.formField.displayNames;
    names = widget.formField.names;

    assert(displayNames.length == names.length, 'radio fields names and display names length should match');
    assert(names.isNotEmpty, 'radio button names list should not be empty');

    range = List<int>.generate(names.length, (i) => i);

    if (names.contains(widget.formField.defaultValue)) {
      currentValue = widget.formField.defaultValue;
    } else {
      currentValue = names[0];
    }
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: range.map((i) {
        return ListTile(
          title: Text(displayNames[i]),
          leading: Radio<String>(
            value: names[i],
            groupValue: currentValue,
            onChanged: (String? value) {
              setState(() {
                if (value != null) {
                  currentValue = value;
                }

                TextEditingController? localController = controller;

                if (localController != null) {
                  localController.text = currentValue;
                }
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
