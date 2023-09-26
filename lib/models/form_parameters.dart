import 'package:admin_login_code_generator/models/authentication_method.dart';
import 'package:flutter/material.dart';

class FormParameters {
  final String title;
  final Color brandColor;
  final List<AuthenticationMethod> methods;

  const FormParameters(
      {required this.title, required this.brandColor, required this.methods});

  FormParameters copyWith(
      {String? title, Color? brandColor, List<AuthenticationMethod>? methods}) {
    return FormParameters(
        title: title ?? this.title,
        brandColor: brandColor ?? this.brandColor,
        methods: methods ?? this.methods);
  }
}
