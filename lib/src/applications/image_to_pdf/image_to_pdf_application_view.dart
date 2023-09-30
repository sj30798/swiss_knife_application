import 'package:flutter/material.dart';
import 'package:swiss_knife_application/src/applications/image_to_pdf/image_to_pdf_application.dart';
import 'package:swiss_knife_application/src/applications/image_to_pdf/image_to_pdf_widget.dart';

class ImageToPdfApplicationView extends StatelessWidget {
  const ImageToPdfApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ImageToPdfApplication.title),
      ),
      body: const ImageToPdfWidget(),
    );
  }
}
