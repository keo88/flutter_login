abstract class UserFormField {
  /// The name of the field retrieved as key.
  /// Please ensure this is unique, otherwise an Error will be thrown
  final String keyName;

  /// The default value of the field
  final String defaultValue;

  const UserFormField({
    required this.keyName,
    String? defaultValue,
  }) : defaultValue = defaultValue ?? '';
}