import 'package:admin_login_code_generator/extensions.dart';
import 'package:admin_login_code_generator/models/authentication_method.dart';
import 'package:admin_login_code_generator/models/form_parameters.dart';
import 'package:flutter/material.dart';

class AdminForm extends StatefulWidget {
  const AdminForm({Key? key, required this.onFormChanged}) : super(key: key);

  final ValueChanged<FormParameters> onFormChanged;

  @override
  State<AdminForm> createState() => _AdminFormState();
}

class _AdminFormState extends State<AdminForm> {
  var _selectedColor = const Color(0xFF6640B4);
  final _customHexColorCodeController = TextEditingController(text: "FF0000");
  final _titleController = TextEditingController(text: "Login");
  final _selectedAuthenticationMethods = Map.fromEntries(
      AuthenticationMethod.values.map((e) => MapEntry(e, true)));
  late Color? _customColor;
  late FormParameters _params;

  @override
  void initState() {
    super.initState();
    _customColor = _calculateColor;
    _customHexColorCodeController.addListener(_onCustomHexColorChanged);
    _titleController.addListener(_onTitleChanged);
    _params = FormParameters(
        title: _titleController.text,
        brandColor: _selectedColor,
        methods: _selectedAuthenticationMethods.entries
            .where((element) => element.value)
            .map((e) => e.key)
            .toList());
  }

  Color? get _calculateColor {
    final hex = int.tryParse(_customHexColorCodeController.text, radix: 16);
    if (hex != null) {
      return Color(0xFF000000 | (hex & 0XFFFFFF));
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                ),
              ),
            ),
            Text("Brand Color", style: context.textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final item in [
                    (label: "Purple", color: const Color(0xFF6640B4)),
                    (label: "Green", color: const Color(0xFF4CAF50)),
                    (label: "Blue", color: const Color(0xFF2196F3)),
                  ])
                    Flexible(
                      child: _RadioButton(
                          selectedColor: _selectedColor,
                          color: item.color,
                          label: item.label,
                          onSelected: _onColorSelected),
                    ),
                  Flexible(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: _RadioButton(
                              selectedColor: _selectedColor,
                              color: _customColor ?? Colors.black,
                              label: "Custom",
                              onSelected: _onColorSelected),
                        ),
                        TextFormField(
                          controller: _customHexColorCodeController,
                          maxLength: 6,
                          decoration: const InputDecoration(
                            labelText: "Hex Color Code",
                            counterText: "",
                            prefix: Text("#"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text("Authentication Methods",
                style: context.textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (final entry in _selectedAuthenticationMethods.entries)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                            value: entry.value,
                            onChanged: (value) =>
                                _onMethodChanged(entry.key, value)),
                        Text(entry.key.toString()),
                      ],
                    )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: _onGenerate,
                      child: const Text("GENERATE")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onColorSelected(Color? value) {
    if (value != null) {
      setState(() {
        _selectedColor = value;
      });
      _params = _params.copyWith(brandColor: value);
    }

    widget.onFormChanged(_params);
  }

  void _onCustomHexColorChanged() {
    setState(() {
      _customColor = _calculateColor;
    });
    _params = _params.copyWith(brandColor: _customColor);
    widget.onFormChanged(_params);
  }

  _onMethodChanged(AuthenticationMethod key, bool? value) {
    if (value != null) {
      setState(() {
        _selectedAuthenticationMethods[key] = value;
      });
      _params = _params.copyWith(
          methods: _selectedAuthenticationMethods.entries
              .where((element) => element.value)
              .map((e) => e.key)
              .toList());
      widget.onFormChanged(_params);
    }
  }

  void _onGenerate() {
    Navigator.of(context)
        .pushNamed("/generated",arguments: _params);
  }

  void _onTitleChanged() {
    _params = _params.copyWith(title: _titleController.text);
    widget.onFormChanged(_params);
  }
}

class _RadioButton extends StatelessWidget {
  const _RadioButton(
      {Key? key,
      required this.selectedColor,
      required this.color,
      required this.label,
      required this.onSelected})
      : super(key: key);

  final Color selectedColor;
  final Color color;
  final String label;
  final ValueChanged<Color?> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio(
          value: color,
          groupValue: selectedColor,
          onChanged: onSelected,
          fillColor: MaterialStatePropertyAll(color),
        ),
        Text(
          label,
          style: TextStyle(color: color),
        )
      ],
    );
  }
}
