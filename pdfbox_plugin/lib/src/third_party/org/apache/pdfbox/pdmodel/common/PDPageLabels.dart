// Generated from Apache PDFBox library which is licensed under the Apache License 2.0.
// The following copyright from the original authors applies.
//
// Licensed to the Apache Software Foundation (ASF) under one or more
// contributor license agreements.  See the NOTICE file distributed with
// this work for additional information regarding copyright ownership.
// The ASF licenses this file to You under the Apache License, Version 2.0
// (the "License"); you may not use this file except in compliance with
// the License.  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

import "../PDDocument.dart" as pddocument_;

import "PDPageLabelRange.dart" as pdpagelabelrange_;
import "../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.PDPageLabels
///
/// Represents the page label dictionary of a document.
///@author Igor Podolskiy
class PDPageLabels extends jni.JObject {
  @override
  late final jni.JObjType<PDPageLabels> $type = type;

  PDPageLabels.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDPageLabelsType();
  static final _new0 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__new0")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument document)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates an empty page label dictionary for the given document.
  ///
  ///
  /// Note that the page label dictionary won't be automatically added to the
  /// document; you will still need to do it manually (see
  /// org.apache.pdfbox.pdmodel.PDDocumentCatalog\#setPageLabels(PDPageLabels).
  ///
  ///
  ///@param document The document the page label dictionary is created for.
  ///@see org.apache.pdfbox.pdmodel.PDDocumentCatalog\#setPageLabels(PDPageLabels)
  factory PDPageLabels(
    pddocument_.PDDocument document,
  ) {
    return PDPageLabels.fromRef(_new0(document.reference).object);
  }

  static final _new1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPageLabels__new1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument document, org.apache.pdfbox.cos.COSDictionary dict)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates an page label dictionary for a document using the information in
  /// the given COS dictionary.
  ///
  ///
  /// Note that the page label dictionary won't be automatically added to the
  /// document; you will still need to do it manually (see
  /// org.apache.pdfbox.pdmodel.PDDocumentCatalog\#setPageLabels(PDPageLabels).
  ///
  ///
  ///@param document The document the page label dictionary is created for.
  ///@param dict an existing page label dictionary
  ///@see org.apache.pdfbox.pdmodel.PDDocumentCatalog\#setPageLabels(PDPageLabels)
  ///@throws IOException If something goes wrong during the number tree conversion.
  factory PDPageLabels.new1(
    pddocument_.PDDocument document,
    jni.JObject dict,
  ) {
    return PDPageLabels.fromRef(
        _new1(document.reference, dict.reference).object);
  }

  static final _getPageRangeCount = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__getPageRangeCount")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getPageRangeCount()
  ///
  /// Returns the number of page label ranges.
  ///
  ///
  /// This will be always &gt;= 1, as the required default entry for the page
  /// range starting at the first page is added automatically by this
  /// implementation (see PDF32000-1:2008, p. 375).
  ///
  ///
  ///@return the number of page label ranges.
  int getPageRangeCount() {
    return _getPageRangeCount(reference).integer;
  }

  static final _getPageLabelRange = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("PDPageLabels__getPageLabelRange")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDPageLabelRange getPageLabelRange(int startPage)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the page label range starting at the given page, or {@code null}
  /// if no such range is defined.
  ///@param startPage the 0-based page index representing the start page of the page
  ///            range the item is defined for.
  ///@return the page label range or {@code null} if no label range is defined
  ///         for the given start page.
  pdpagelabelrange_.PDPageLabelRange getPageLabelRange(
    int startPage,
  ) {
    return const pdpagelabelrange_.$PDPageLabelRangeType()
        .fromRef(_getPageLabelRange(reference, startPage).object);
  }

  static final _setLabelItem = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>, ffi.Int32,
                  ffi.Pointer<ffi.Void>)>>("PDPageLabels__setLabelItem")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Void>)>();

  /// from: public void setLabelItem(int startPage, org.apache.pdfbox.pdmodel.common.PDPageLabelRange item)
  ///
  /// Sets the page label range beginning at the specified start page.
  ///@param startPage the 0-based index of the page representing the start of the
  ///            page label range.
  ///@param item the page label item to set.
  ///@throws IllegalArgumentException if the startPage parameter is &lt; 0.
  void setLabelItem(
    int startPage,
    pdpagelabelrange_.PDPageLabelRange item,
  ) {
    return _setLabelItem(reference, startPage, item.reference).check();
  }

  static final _getCOSObject = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__getCOSObject")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSBase getCOSObject()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JObject getCOSObject() {
    return const jni.JObjectType().fromRef(_getCOSObject(reference).object);
  }

  static final _getPageIndicesByLabels = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__getPageIndicesByLabels")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Map<java.lang.String,java.lang.Integer> getPageIndicesByLabels()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns a mapping with computed page labels as keys and corresponding
  /// 0-based page indices as values. The returned map will contain at most as
  /// much entries as the document has pages.
  ///
  ///
  /// <strong>NOTE:</strong> If the document contains duplicate page labels,
  /// the returned map will contain _less_ entries than the document has
  /// pages. The page index returned in this case is the _highest_ index
  /// among all pages sharing the same label.
  ///
  ///
  ///@return a mapping from labels to 0-based page indices.
  jni.JMap<jni.JString, jni.JInteger> getPageIndicesByLabels() {
    return const jni.JMapType(jni.JStringType(), jni.JIntegerType())
        .fromRef(_getPageIndicesByLabels(reference).object);
  }

  static final _getLabelsByPageIndices = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__getLabelsByPageIndices")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String[] getLabelsByPageIndices()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns a mapping with 0-based page indices as keys and corresponding
  /// page labels as values as an array. The array will have exactly as much
  /// entries as the document has pages.
  ///@return an array mapping from 0-based page indices to labels.
  jni.JArray<jni.JString> getLabelsByPageIndices() {
    return const jni.JArrayType(jni.JStringType())
        .fromRef(_getLabelsByPageIndices(reference).object);
  }

  static final _getPageIndices = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPageLabels__getPageIndices")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.NavigableSet<java.lang.Integer> getPageIndices()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get an ordered set of page indices having a page label range.
  ///@return set of page indices.
  jni.JObject getPageIndices() {
    return const jni.JObjectType().fromRef(_getPageIndices(reference).object);
  }
}

final class $PDPageLabelsType extends jni.JObjType<PDPageLabels> {
  const $PDPageLabelsType();

  @override
  String get signature => r"Lorg/apache/pdfbox/pdmodel/common/PDPageLabels;";

  @override
  PDPageLabels fromRef(jni.JObjectPtr ref) => PDPageLabels.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($PDPageLabelsType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDPageLabelsType) &&
        other is $PDPageLabelsType;
  }
}
