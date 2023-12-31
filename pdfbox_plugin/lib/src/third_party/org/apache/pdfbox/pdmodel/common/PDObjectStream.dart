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

import "PDStream.dart" as pdstream_;

import "../PDDocument.dart" as pddocument_;
import "../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.PDObjectStream
///
/// A PDStream represents a stream in a PDF document.  Streams are tied to a single
/// PDF document.
///@author Ben Litchfield
class PDObjectStream extends pdstream_.PDStream {
  @override
  late final jni.JObjType<PDObjectStream> $type = type;

  PDObjectStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDObjectStreamType();
  static final _new2 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__new2")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSStream str)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor.
  ///@param str The stream parameter.
  factory PDObjectStream.new2(
    jni.JObject str,
  ) {
    return PDObjectStream.fromRef(_new2(str.reference).object);
  }

  static final _createStream = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__createStream")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: static public org.apache.pdfbox.pdmodel.common.PDObjectStream createStream(org.apache.pdfbox.pdmodel.PDDocument document)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will create a new PDObjectStream object.
  ///@param document The document that the stream will be part of.
  ///@return A new stream object.
  static PDObjectStream createStream(
    pddocument_.PDDocument document,
  ) {
    return const $PDObjectStreamType()
        .fromRef(_createStream(document.reference).object);
  }

  static final _getType = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__getType")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getType()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the type of this object, should always return "ObjStm".
  ///@return The type of this object.
  jni.JString getType() {
    return const jni.JStringType().fromRef(_getType(reference).object);
  }

  static final _getNumberOfObjects = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__getNumberOfObjects")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getNumberOfObjects()
  ///
  /// Get the number of compressed object.
  ///@return The number of compressed objects.
  int getNumberOfObjects() {
    return _getNumberOfObjects(reference).integer;
  }

  static final _setNumberOfObjects = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("PDObjectStream__setNumberOfObjects")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setNumberOfObjects(int n)
  ///
  /// Set the number of objects.
  ///@param n The new number of objects.
  void setNumberOfObjects(
    int n,
  ) {
    return _setNumberOfObjects(reference, n).check();
  }

  static final _getFirstByteOffset = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__getFirstByteOffset")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getFirstByteOffset()
  ///
  /// The byte offset (in the decoded stream) of the first compressed object.
  ///@return The byte offset to the first object.
  int getFirstByteOffset() {
    return _getFirstByteOffset(reference).integer;
  }

  static final _setFirstByteOffset = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("PDObjectStream__setFirstByteOffset")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setFirstByteOffset(int n)
  ///
  /// The byte offset (in the decoded stream) of the first compressed object.
  ///@param n The byte offset to the first object.
  void setFirstByteOffset(
    int n,
  ) {
    return _setFirstByteOffset(reference, n).check();
  }

  static final _getExtends = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDObjectStream__getExtends")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDObjectStream getExtends()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A reference to an object stream, of which the current object stream is
  /// considered an extension.
  ///@return The object that this stream is an extension.
  PDObjectStream getExtends() {
    return const $PDObjectStreamType().fromRef(_getExtends(reference).object);
  }

  static final _setExtends = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDObjectStream__setExtends")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setExtends(org.apache.pdfbox.pdmodel.common.PDObjectStream stream)
  ///
  /// A reference to an object stream, of which the current object stream is
  /// considered an extension.
  ///@param stream The object stream extension.
  void setExtends(
    PDObjectStream stream,
  ) {
    return _setExtends(reference, stream.reference).check();
  }
}

final class $PDObjectStreamType extends jni.JObjType<PDObjectStream> {
  const $PDObjectStreamType();

  @override
  String get signature => r"Lorg/apache/pdfbox/pdmodel/common/PDObjectStream;";

  @override
  PDObjectStream fromRef(jni.JObjectPtr ref) => PDObjectStream.fromRef(ref);

  @override
  jni.JObjType get superType => const pdstream_.$PDStreamType();

  @override
  final superCount = 2;

  @override
  int get hashCode => ($PDObjectStreamType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDObjectStreamType) &&
        other is $PDObjectStreamType;
  }
}
