import 'package:flutter_login/src/models/user_form_field.dart';

class RadioUserFormField extends UserFormField {

  /// List of values for selected radio button.
  final List<String> names;

  /// If not specified, display names defaults to names.
  final List<String> displayNames;

  const RadioUserFormField({
    required String keyName,
    required this.names,
    List<String>? displayNames,
    String? defaultValue,
  }) : displayNames = displayNames ?? names, super(keyName: keyName, defaultValue: defaultValue);
}
