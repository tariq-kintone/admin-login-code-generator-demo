import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({Key? key, required this.code, required this.labelText})
      : super(key: key);

  final String code;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
            controller: TextEditingController(text: code),
            decoration: InputDecoration(labelText: labelText),
            readOnly: true,
            maxLines: 10,
            minLines: 10),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: code));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$labelText copied to clipboard")));
                },
                icon: const Icon(Icons.copy)))
      ],
    );
  }
}
