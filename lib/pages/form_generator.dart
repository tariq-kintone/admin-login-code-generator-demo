import 'package:admin_login_code_generator/models/form_parameters.dart';
import 'package:admin_login_code_generator/widgets/form.dart';
import 'package:admin_login_code_generator/widgets/preview.dart';
import 'package:flutter/material.dart';

class FormGeneratorPage extends StatefulWidget {
  const FormGeneratorPage({super.key});

  @override
  State<FormGeneratorPage> createState() => _FormGeneratorPageState();
}

class _FormGeneratorPageState extends State<FormGeneratorPage> {
  FormParameters? _parameters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Form Generator")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: AdminForm(
                onFormChanged: (params) => setState(() {
                  _parameters = params;
                }),
              ),
            ),
            const SizedBox(height: 600, child: VerticalDivider(width: 42,)),
            Expanded(child: AdminPreview(parameters: _parameters)),
          ],
        ),
      ),
    );
  }
}
