import 'package:swiss_knife_application/src/applications/json_formatter/formatted_text_widget.dart';

import 'package:flutter/material.dart';

class JsonFormatterApplicationView extends StatelessWidget {
  const JsonFormatterApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json formatter"),
      ),
      body: const FormattedTextWidget(),
    );
  }
}
