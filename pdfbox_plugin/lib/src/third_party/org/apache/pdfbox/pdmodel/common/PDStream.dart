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

import "filespecification/PDFileSpecification.dart" as pdfilespecification_;

import "PDMetadata.dart" as pdmetadata_;
import "../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.PDStream
///
/// A PDStream represents a stream in a PDF document. Streams are tied to a single PDF document.
///@author Ben Litchfield
class PDStream extends jni.JObject {
  @override
  late final jni.JObjType<PDStream> $type = type;

  PDStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDStreamType();
  static final _new0 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__new0")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument document)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new empty PDStream object.
  ///@param document The document that the stream will be part of.
  factory PDStream(
    pddocument_.PDDocument document,
  ) {
    return PDStream.fromRef(_new0(document.reference).object);
  }

  static final _new1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__new1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSDocument document)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new empty PDStream object.
  ///@param document The document that the stream will be part of.
  factory PDStream.new1(
    jni.JObject document,
  ) {
    return PDStream.fromRef(_new1(document.reference).object);
  }

  static final _new2 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__new2")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSStream str)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a PDStream which wraps the given COSStream.
  ///@param str The stream parameter.
  factory PDStream.new2(
    jni.JObject str,
  ) {
    return PDStream.fromRef(_new2(str.reference).object);
  }

  static final _new3 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__new3")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument doc, java.io.InputStream input)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor. Reads all data from the input stream and embeds it into the document. This
  /// method closes the InputStream.
  ///@param doc The document that will hold the stream.
  ///@param input The stream parameter.
  ///@throws IOException If there is an error creating the stream in the document.
  factory PDStream.new3(
    pddocument_.PDDocument doc,
    jni.JObject input,
  ) {
    return PDStream.fromRef(_new3(doc.reference, input.reference).object);
  }

  static final _new4 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__new4")
      .asFunction<
          jni.JniResult Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument doc, java.io.InputStream input, org.apache.pdfbox.cos.COSName filter)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor. Reads all data from the input stream and embeds it into the document with the
  /// given filter applied. This method closes the InputStream.
  ///@param doc The document that will hold the stream.
  ///@param input The stream parameter.
  ///@param filter Filter to apply to the stream.
  ///@throws IOException If there is an error creating the stream in the document.
  factory PDStream.new4(
    pddocument_.PDDocument doc,
    jni.JObject input,
    jni.JObject filter,
  ) {
    return PDStream.fromRef(
        _new4(doc.reference, input.reference, filter.reference).object);
  }

  static final _new5 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__new5")
      .asFunction<
          jni.JniResult Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.PDDocument doc, java.io.InputStream input, org.apache.pdfbox.cos.COSArray filters)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor. Reads all data from the input stream and embeds it into the document with the
  /// given filters applied. This method closes the InputStream.
  ///@param doc The document that will hold the stream.
  ///@param input The stream parameter.
  ///@param filters Filters to apply to the stream.
  ///@throws IOException If there is an error creating the stream in the document.
  factory PDStream.new5(
    pddocument_.PDDocument doc,
    jni.JObject input,
    jni.JObject filters,
  ) {
    return PDStream.fromRef(
        _new5(doc.reference, input.reference, filters.reference).object);
  }

  static final _addCompression = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__addCompression")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void addCompression()
  ///
  /// If there are not compression filters on the current stream then this will
  /// add a compression filter, flate compression for example.
  ///@deprecated This method is inefficient. To copying an existing InputStream, use
  ///             \#PDStream(PDDocument, InputStream, COSName) instead, with
  ///             COSName.FLATE_DECODE as the final argument.
  ///
  ///             Otherwise, to write new compressed data, use \#createOutputStream(COSName),
  ///             with COSName.FLATE_DECODE as the argument.
  void addCompression() {
    return _addCompression(reference).check();
  }

  static final _getCOSObject = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getCOSObject")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSStream getCOSObject()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the cos stream associated with this object.
  ///@return The cos object that matches this Java object.
  jni.JObject getCOSObject() {
    return const jni.JObjectType().fromRef(_getCOSObject(reference).object);
  }

  static final _createOutputStream = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__createOutputStream")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.io.OutputStream createOutputStream()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get a stream that can be written to.
  ///@return An output stream to write data to.
  ///@throws IOException If an IO error occurs during writing.
  jni.JObject createOutputStream() {
    return const jni.JObjectType()
        .fromRef(_createOutputStream(reference).object);
  }

  static final _createOutputStream1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__createOutputStream1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public java.io.OutputStream createOutputStream(org.apache.pdfbox.cos.COSName filter)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get a stream that can be written to, with the given filter.
  ///@param filter the filter to be used.
  ///@return An output stream to write data to.
  ///@throws IOException If an IO error occurs during writing.
  jni.JObject createOutputStream1(
    jni.JObject filter,
  ) {
    return const jni.JObjectType()
        .fromRef(_createOutputStream1(reference, filter.reference).object);
  }

  static final _createInputStream = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__createInputStream")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSInputStream createInputStream()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get a stream that can be read from.
  ///@return An input stream that can be read from.
  ///@throws IOException If an IO error occurs during reading.
  jni.JObject createInputStream() {
    return const jni.JObjectType()
        .fromRef(_createInputStream(reference).object);
  }

  static final _createInputStream1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__createInputStream1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSInputStream createInputStream(org.apache.pdfbox.filter.DecodeOptions options)
  /// The returned object must be released after use, by calling the [release] method.
  jni.JObject createInputStream1(
    jni.JObject options,
  ) {
    return const jni.JObjectType()
        .fromRef(_createInputStream1(reference, options.reference).object);
  }

  static final _createInputStream2 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__createInputStream2")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public java.io.InputStream createInputStream(java.util.List<java.lang.String> stopFilters)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get a stream with some filters applied but not others. This is
  /// useful when doing images, ie filters = [flate,dct], we want to remove
  /// flate but leave dct
  ///@param stopFilters A list of filters to stop decoding at.
  ///@return A stream with decoded data.
  ///@throws IOException If there is an error processing the stream.
  jni.JObject createInputStream2(
    jni.JList<jni.JString> stopFilters,
  ) {
    return const jni.JObjectType()
        .fromRef(_createInputStream2(reference, stopFilters.reference).object);
  }

  static final _getStream = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getStream")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSStream getStream()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the cos stream associated with this object.
  ///@return The cos object that matches this Java object.
  ///@deprecated use \#getCOSObject()
  jni.JObject getStream() {
    return const jni.JObjectType().fromRef(_getStream(reference).object);
  }

  static final _getLength = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getLength")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getLength()
  ///
  /// This will get the length of the filtered/compressed stream. This is
  /// readonly in the PD Model and will be managed by this class.
  ///@return The length of the filtered stream.
  int getLength() {
    return _getLength(reference).integer;
  }

  static final _getFilters = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getFilters")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<org.apache.pdfbox.cos.COSName> getFilters()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the list of filters that are associated with this stream.
  /// Or null if there are none.
  ///@return A list of all encoding filters to apply to this stream.
  jni.JList<jni.JObject> getFilters() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getFilters(reference).object);
  }

  static final _setFilters = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setFilters")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFilters(java.util.List<org.apache.pdfbox.cos.COSName> filters)
  ///
  /// This will set the filters that are part of this stream.
  ///@param filters The filters that are part of this stream.
  void setFilters(
    jni.JList<jni.JObject> filters,
  ) {
    return _setFilters(reference, filters.reference).check();
  }

  static final _getDecodeParms = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getDecodeParms")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<java.lang.Object> getDecodeParms()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the list of decode parameters. Each entry in the list will refer to
  /// an entry in the filters list.
  ///@return The list of decode parameters.
  ///@throws IOException if there is an error retrieving the parameters.
  jni.JList<jni.JObject> getDecodeParms() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getDecodeParms(reference).object);
  }

  static final _getFileDecodeParams = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getFileDecodeParams")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<java.lang.Object> getFileDecodeParams()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the list of decode parameters. Each entry in the list will refer to
  /// an entry in the filters list.
  ///@return The list of decode parameters.
  ///@throws IOException if there is an error retrieving the parameters.
  jni.JList<jni.JObject> getFileDecodeParams() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getFileDecodeParams(reference).object);
  }

  static final _setDecodeParms = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setDecodeParms")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setDecodeParms(java.util.List<?> decodeParams)
  ///
  /// This will set the list of decode parameters.
  ///@param decodeParams The list of decode parameters.
  void setDecodeParms(
    jni.JList<jni.JObject> decodeParams,
  ) {
    return _setDecodeParms(reference, decodeParams.reference).check();
  }

  static final _getFile = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getFile")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDFileSpecification getFile()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the file specification for this stream. This is only
  /// required for external files.
  ///@return The file specification.
  ///@throws IOException If there is an error creating the file spec.
  pdfilespecification_.PDFileSpecification getFile() {
    return const pdfilespecification_.$PDFileSpecificationType()
        .fromRef(_getFile(reference).object);
  }

  static final _setFile = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setFile")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFile(org.apache.pdfbox.pdmodel.common.filespecification.PDFileSpecification f)
  ///
  /// Set the file specification.
  ///@param f The file specification.
  void setFile(
    pdfilespecification_.PDFileSpecification f,
  ) {
    return _setFile(reference, f.reference).check();
  }

  static final _getFileFilters = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getFileFilters")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<java.lang.String> getFileFilters()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the list of filters that are associated with this stream.
  /// Or null if there are none.
  ///@return A list of all encoding filters to apply to this stream.
  jni.JList<jni.JString> getFileFilters() {
    return const jni.JListType(jni.JStringType())
        .fromRef(_getFileFilters(reference).object);
  }

  static final _setFileFilters = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setFileFilters")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileFilters(java.util.List<java.lang.String> filters)
  ///
  /// This will set the filters that are part of this stream.
  ///@param filters The filters that are part of this stream.
  void setFileFilters(
    jni.JList<jni.JString> filters,
  ) {
    return _setFileFilters(reference, filters.reference).check();
  }

  static final _setFileDecodeParams = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setFileDecodeParams")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileDecodeParams(java.util.List<?> decodeParams)
  ///
  /// This will set the list of decode params.
  ///@param decodeParams The list of decode params.
  void setFileDecodeParams(
    jni.JList<jni.JObject> decodeParams,
  ) {
    return _setFileDecodeParams(reference, decodeParams.reference).check();
  }

  static final _toByteArray = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__toByteArray")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public byte[] toByteArray()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will copy the stream into a byte array.
  ///@return The byte array of the filteredStream.
  ///@throws IOException if an I/O error occurs.
  jni.JArray<jni.jbyte> toByteArray() {
    return const jni.JArrayType(jni.jbyteType())
        .fromRef(_toByteArray(reference).object);
  }

  static final _getMetadata = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getMetadata")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDMetadata getMetadata()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the metadata that is part of the document catalog. This will return
  /// null if there is no meta data for this object.
  ///@return The metadata for this object.
  ///@throws IllegalStateException if the value of the metadata entry is different from a stream
  ///                               or null
  pdmetadata_.PDMetadata getMetadata() {
    return const pdmetadata_.$PDMetadataType()
        .fromRef(_getMetadata(reference).object);
  }

  static final _setMetadata = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDStream__setMetadata")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setMetadata(org.apache.pdfbox.pdmodel.common.PDMetadata meta)
  ///
  /// Set the metadata for this object. This can be null.
  ///@param meta The meta data for this object.
  void setMetadata(
    pdmetadata_.PDMetadata meta,
  ) {
    return _setMetadata(reference, meta.reference).check();
  }

  static final _getDecodedStreamLength = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDStream__getDecodedStreamLength")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getDecodedStreamLength()
  ///
  /// Get the decoded stream length.
  ///@return the decoded stream length
  int getDecodedStreamLength() {
    return _getDecodedStreamLength(reference).integer;
  }

  static final _setDecodedStreamLength = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("PDStream__setDecodedStreamLength")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setDecodedStreamLength(int decodedStreamLength)
  ///
  /// Set the decoded stream length.
  ///@param decodedStreamLength the decoded stream length
  void setDecodedStreamLength(
    int decodedStreamLength,
  ) {
    return _setDecodedStreamLength(reference, decodedStreamLength).check();
  }
}

final class $PDStreamType extends jni.JObjType<PDStream> {
  const $PDStreamType();

  @override
  String get signature => r"Lorg/apache/pdfbox/pdmodel/common/PDStream;";

  @override
  PDStream fromRef(jni.JObjectPtr ref) => PDStream.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($PDStreamType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDStreamType) && other is $PDStreamType;
  }
}
