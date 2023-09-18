import 'package:flutter/material.dart';
import 'package:file_selector/file_selector.dart';
import 'package:jni/jni.dart';
import 'package:pdfbox_plugin/pdfbox_plugin.dart';

class PdfCompressorWidget extends StatefulWidget {
  const PdfCompressorWidget({super.key});

  @override
  PDFCompresserWidgetState createState() => PDFCompresserWidgetState();
}

class PDFCompresserWidgetState extends State<PdfCompressorWidget> {
  late List<XFile> imageFilePaths;
  late FileSaveLocation? pdfFilePath;

  @override
  void initState() {
    super.initState();

    imageFilePaths = List.empty(growable: true);
    pdfFilePath = null;
    debugPrint("Initialization complete");
  }

  void _createPdfFromImages() {
    if (imageFilePaths.isEmpty ||
        pdfFilePath == null ||
        pdfFilePath?.path == null) {
      debugPrint("imageFilePath or pdfFilePath is not provided!");
      return;
    }

    final doc = PDDocument();
    for (var imagePath in imageFilePaths) {
      debugPrint("Adding image with path: ${imagePath.path}");
      final page = PDPage();
      doc.addPage(page);
      final contentStream = PDPageContentStream(doc, page);
      final imageObj = PDImageXObject.createFromFile(
          JString.fromString(imagePath.path), doc);
      contentStream.drawImage1(imageObj, 0, 0, imageObj.getHeight().toDouble(), imageObj.getWidth().toDouble());
      contentStream.close();
    }
    debugPrint("Writing PDF to location: ${pdfFilePath?.path}");
    doc.save(JString.fromString(pdfFilePath?.path as String));
    doc.close();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Success"),
            content: Text("Saved successfully"),
          );
        });
  }

  Future<void> _selectPdfFilePath(BuildContext context) async {
    // #docregion MultiOpen
    const XTypeGroup pdfTypeGroup = XTypeGroup(
      label: 'PDFs',
      extensions: <String>['pdf'],
    );
    final FileSaveLocation? saveLocation = await getSaveLocation(
        acceptedTypeGroups: <XTypeGroup>[pdfTypeGroup],
        suggestedName: "output.pdf");
    // #enddocregion MultiOpen
    if (saveLocation == null) {
      // Operation was canceled by the user.
      return;
    }
    pdfFilePath = saveLocation;
    debugPrint("Added pdf location as: ${saveLocation.path}");
  }

  Future<void> _openImageFile(BuildContext context) async {
    // #docregion MultiOpen
    const XTypeGroup jpgsTypeGroup = XTypeGroup(
      label: 'JPEGs',
      extensions: <String>['jpg', 'jpeg'],
    );
    const XTypeGroup pngTypeGroup = XTypeGroup(
      label: 'PNGs',
      extensions: <String>['png'],
    );
    final List<XFile> files = await openFiles(acceptedTypeGroups: <XTypeGroup>[
      jpgsTypeGroup,
      pngTypeGroup,
    ]);
    // #enddocregion MultiOpen
    if (files.isEmpty) {
      // Operation was canceled by the user.
      return;
    }
    if (context.mounted) {
      imageFilePaths.clear();
      imageFilePaths.addAll(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Select image files'),
              onPressed: () => _openImageFile(context),
            ),
            ElevatedButton(
                onPressed: () => _selectPdfFilePath(context),
                child: const Text('Select destination PDF location')),
            ElevatedButton(
              onPressed: () => _createPdfFromImages(),
              child: const Text("Convert to PDF"),
            ),
          ]),
    );
  }
}
