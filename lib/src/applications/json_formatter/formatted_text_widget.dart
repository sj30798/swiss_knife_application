import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validators/validators.dart';

class FormattedTextWidget extends StatefulWidget {
  const FormattedTextWidget({Key? key}) : super(key: key);

  @override
  FormattedTextWidgetState createState() => FormattedTextWidgetState();
}

class FormattedTextWidgetState extends State<FormattedTextWidget> {
  late TextEditingController _controller;
  late ScrollController _scrollControllerFormattedField;
  late ScrollController _scrollControllerOriginalField;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: "");
    _scrollControllerFormattedField = ScrollController();
    _scrollControllerOriginalField = ScrollController();
  }

  String prettyJson(String dirtyJson) {
    var encoder = const JsonEncoder.withIndent("    ");
    return encoder.convert(jsonDecode(dirtyJson));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Scrollbar(
          controller: _scrollControllerOriginalField,
          child: TextFormField(
            focusNode: primaryFocus,
            decoration: const InputDecoration(
              hintText: "Original text",
              border: OutlineInputBorder(),
            ),
            scrollController: _scrollControllerOriginalField,
            maxLines: null,
            onChanged: (text) {
              if (isJSON(text)) {
                debugPrint("$text formatted is ${prettyJson(text)}");
                _controller.text = prettyJson(text);
              } else {
                debugPrint("$text is invalid json");
              }
            },
          ),
        ),
        Scrollbar(
          controller: _scrollControllerFormattedField,
          child: TextFormField(
            controller: _controller,
            scrollController: _scrollControllerFormattedField,
            decoration: InputDecoration(
              hintText: "Formatted JSON",
              suffixIcon: IconButton(
                icon: const Icon(Icons.copy_all_rounded),
                onPressed: () {
                  debugPrint('Copying formatted text to clipboard: "${_controller.text}"');
                  Clipboard.setData(ClipboardData(text: _controller.text));
                },
              ),
              border: const OutlineInputBorder(),
            ),
            readOnly: true,
            maxLines: null,
          ),
        )
      ],
    );
  }
}
