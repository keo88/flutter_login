import 'package:flutter/material.dart';
import 'package:flutter_login/src/models/login_user_type.dart';
import 'package:flutter_login/src/models/user_form_field.dart';

class TextUserFormField extends UserFormField {

  /// The name of the field displayed on the form. Defaults to `keyName` if not given
  final String displayName;

  /// A function to validate the field.
  /// It should return null on success, or a string with the explanation of the error
  final FormFieldValidator<String>? fieldValidator;

  /// The icon shown on the left of the field. Defaults to the user icon
  final Icon? icon;

  /// The LoginUserType of the form. The right keyboard and suggestions will be shown accordingly
  /// Defaults to LoginUserType.user
  final LoginUserType userType;

  const TextUserFormField({
    required String keyName,
    String? displayName,
    String? defaultValue,
    this.icon,
    this.fieldValidator,
    this.userType = LoginUserType.name,
  }) :  displayName = displayName ?? keyName, super(keyName: keyName, defaultValue: defaultValue);
}
