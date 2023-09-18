import 'package:flutter/material.dart';
import 'package:swiss_knife_application/src/applications/pdf_compressor/pdf_compressor_application.dart';
import 'package:swiss_knife_application/src/applications/pdf_compressor/pdf_compressor_widget.dart';

class PdfCompressorApplicationView extends StatelessWidget {
  const PdfCompressorApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(PdfCompressorApplication.title),
      ),
      body: const PdfCompressorWidget(),
    );
  }
}
