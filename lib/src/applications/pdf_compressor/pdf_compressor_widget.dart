import 'dart:math';

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
  late String? pageSize;
  late String? imageFill;
  late bool? drawLandscape;

  static const double margin = 10;

  static const pdfPageTypeA0 = 'A0';
  static const pdfPageTypeA1 = 'A1';
  static const pdfPageTypeA2 = 'A2';
  static const pdfPageTypeA3 = 'A3';
  static const pdfPageTypeA4 = 'A4';
  static const pdfPageTypeA5 = 'A5';
  static const pdfPageTypeA6 = 'A6';
  static const pdfPageTypeLetter = 'LETTER';
  static const pdfPageTypeLegal = 'LEGAL';
  static const pdfPageTypeImageSize = 'Image size';
  static const pdfPageTypes = [
    pdfPageTypeA0,
    pdfPageTypeA1,
    pdfPageTypeA2,
    pdfPageTypeA3,
    pdfPageTypeA4,
    pdfPageTypeA5,
    pdfPageTypeA6,
    pdfPageTypeLegal,
    pdfPageTypeLetter,
    pdfPageTypeImageSize
    ];

  static const imageFillTypeShrinkToFit = "Shrink to fit";
  static const imageFillTypeFillPage = "Fill page";
  static const imageFillTypeKeepOriginal = "Keep original";
  static const imageFillTypes = [
    imageFillTypeShrinkToFit,
    imageFillTypeKeepOriginal,
    imageFillTypeFillPage
  ];

  @override
  void initState() {
    super.initState();

    imageFilePaths = List.empty(growable: true);
    pdfFilePath = null;
    pageSize = pdfPageTypeImageSize;
    drawLandscape = false;
    debugPrint("Initialization complete");
  }

  PDRectangle _getPageSize(PDImageXObject imageXObject, String? newPageSize, bool? drawLandscape) {
    PDRectangle pageSize = PDRectangle.A4;
    switch (newPageSize) {
      case pdfPageTypeA0:
        pageSize = PDRectangle.A0;
        break;
      case pdfPageTypeA1:
        pageSize = PDRectangle.A1;
        break;
      case pdfPageTypeA2:
        pageSize = PDRectangle.A2;
        break;
      case pdfPageTypeA3:
        pageSize = PDRectangle.A3;
        break;
      case pdfPageTypeA4:
        pageSize = PDRectangle.A4;
        break;
      case pdfPageTypeA5:
        pageSize = PDRectangle.A5;
        break;
      case pdfPageTypeA6:
        pageSize = PDRectangle.A6;
        break;
      case pdfPageTypeLetter:
        pageSize = PDRectangle.LETTER;
        break;
      case pdfPageTypeLegal:
        pageSize = PDRectangle.LEGAL;
        break;
      case pdfPageTypeImageSize:
        pageSize = PDRectangle.new1(imageXObject.getWidth().toDouble(), imageXObject.getHeight().toDouble());
        break;
      default:
        pageSize = PDRectangle.A4;
    }
    if (drawLandscape != null && drawLandscape) {
      if (pdfPageTypeImageSize != newPageSize) {
        // Rotate by 90 degrees
        double height = pageSize.getHeight();
        double width = pageSize.getWidth();
        pageSize = PDRectangle.new1(height, width);
      }
    }
    return pageSize;
  }

  PDRectangle _getImageFill(PDImageXObject imageXObject, String? imageFill, PDRectangle pageSize) {
    PDRectangle imageFillRectangle;
    switch (imageFill) {
      case imageFillTypeKeepOriginal:
        double xCoordinate = (pageSize.getWidth() - imageXObject.getWidth())/2;
        double yCoordinate = (pageSize.getHeight() - imageXObject.getHeight())/2;
        imageFillRectangle = PDRectangle.new2(xCoordinate, yCoordinate, imageXObject.getWidth().toDouble(), imageXObject.getHeight().toDouble());
        break;
      case imageFillTypeFillPage:
        imageFillRectangle = PDRectangle.new2(0, 0, pageSize.getWidth(), pageSize.getHeight());
        break;
      case imageFillTypeShrinkToFit:
      default:
        double xFactor = pageSize.getWidth()/imageXObject.getWidth();
        double yFactor = pageSize.getHeight()/imageXObject.getHeight();
        double resizeFactor = min(xFactor, yFactor);
        double resizedImageWidth = imageXObject.getWidth() * resizeFactor;
        double resizedImageHeight = imageXObject.getHeight() * resizeFactor;
        double xCoordinate = (pageSize.getWidth() - resizedImageWidth)/2;
        double yCoordinate = (pageSize.getHeight() - resizedImageHeight)/2;
        imageFillRectangle = PDRectangle.new2(xCoordinate, yCoordinate, resizedImageWidth, resizedImageHeight);
    }
    return imageFillRectangle;
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
      final imageObj = PDImageXObject.createFromFile(
          JString.fromString(imagePath.path), doc);

      PDRectangle requiredPageSize = _getPageSize(imageObj, pageSize, drawLandscape);
      final page = PDPage.new1(requiredPageSize);
      debugPrint("Adding image with path: ${imagePath.path} with dimensions ${imageObj.getHeight()}X${imageObj.getWidth()} to pageSize: ${requiredPageSize.getHeight()}X${requiredPageSize.getWidth()}");

      final contentStream = PDPageContentStream(doc, page);
      PDRectangle imageDimensions = _getImageFill(imageObj, imageFill, requiredPageSize);
      debugPrint("Adding image with path: ${imagePath.path} with dimensions ${imageDimensions.getLowerLeftX()}X${imageDimensions.getLowerLeftY()} to pageSize: ${imageDimensions.getHeight()}X${imageDimensions.getWidth()}");

      contentStream.drawImage1(
          imageObj,
          imageDimensions.getLowerLeftX(),
          imageDimensions.getLowerLeftY(),
          imageDimensions.getWidth().toDouble(),
          imageDimensions.getHeight().toDouble());
      doc.addPage(page);

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
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Select image files'),
              onPressed: () => _openImageFile(context),
            ),
            const SizedBox(
              height: margin,
            ),
            ElevatedButton(
                onPressed: () => _selectPdfFilePath(context),
                child: const Text('Select destination PDF location')),
            const SizedBox(
              height: margin,
            ),
            DropdownMenu<String>(
              dropdownMenuEntries: pdfPageTypes.map((String value) {
                return DropdownMenuEntry<String>(
                  value: value,
                  label: value
                );
              }).toList(),
              initialSelection: pdfPageTypeImageSize,
              onSelected: (String? value) => {
                pageSize = value
              },
            ),
            const SizedBox(
              height: margin,
            ),
            DropdownMenu<String>(
              dropdownMenuEntries: imageFillTypes.map((String value) {
                return DropdownMenuEntry<String>(
                  value: value,
                  label: value
                );
              }).toList(),
              initialSelection: imageFillTypeShrinkToFit,
              onSelected: (String? value) => {
                imageFill = value
              },
            ),
            const SizedBox(
              height: margin,
            ),
            CheckboxListTile(
              title: const Text('Landscape'),
              value: drawLandscape,
              onChanged: (value) {
                setState(() {
                  drawLandscape = value;
                });
              },
            ),
            const SizedBox(
              height: margin,
            ),
            ElevatedButton(
              onPressed: () => _createPdfFromImages(),
              child: const Text("Convert to PDF"),
            ),
          ]),
    );
  }
}
