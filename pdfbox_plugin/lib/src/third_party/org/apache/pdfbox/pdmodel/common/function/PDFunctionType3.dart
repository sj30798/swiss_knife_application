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

import "PDFunction.dart" as pdfunction_;
import "../../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.function.PDFunctionType3
///
/// This class represents a Type 3 (stitching) function in a PDF document.
///@author Ben Litchfield
class PDFunctionType3 extends pdfunction_.PDFunction {
  @override
  late final jni.JObjType<PDFunctionType3> $type = type;

  PDFunctionType3.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDFunctionType3Type();
  static final _new0 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDFunctionType3__new0")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSBase functionStream)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor.
  ///@param functionStream The function .
  factory PDFunctionType3(
    jni.JObject functionStream,
  ) {
    return PDFunctionType3.fromRef(_new0(functionStream.reference).object);
  }

  static final _getFunctionType = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDFunctionType3__getFunctionType")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getFunctionType()
  ///
  /// {@inheritDoc}
  int getFunctionType() {
    return _getFunctionType(reference).integer;
  }

  static final _eval1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDFunctionType3__eval1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public float[] eval(float[] input)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JArray<jni.jfloat> eval1(
    jni.JArray<jni.jfloat> input,
  ) {
    return const jni.JArrayType(jni.jfloatType())
        .fromRef(_eval1(reference, input.reference).object);
  }

  static final _getFunctions = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDFunctionType3__getFunctions")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSArray getFunctions()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns all functions values as COSArray.
  ///@return the functions array.
  jni.JObject getFunctions() {
    return const jni.JObjectType().fromRef(_getFunctions(reference).object);
  }

  static final _getBounds = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDFunctionType3__getBounds")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSArray getBounds()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns all bounds values as COSArray.
  ///@return the bounds array.
  jni.JObject getBounds() {
    return const jni.JObjectType().fromRef(_getBounds(reference).object);
  }

  static final _getEncode = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDFunctionType3__getEncode")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSArray getEncode()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns all encode values as COSArray.
  ///@return the encode array.
  jni.JObject getEncode() {
    return const jni.JObjectType().fromRef(_getEncode(reference).object);
  }
}

final class $PDFunctionType3Type extends jni.JObjType<PDFunctionType3> {
  const $PDFunctionType3Type();

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/function/PDFunctionType3;";

  @override
  PDFunctionType3 fromRef(jni.JObjectPtr ref) => PDFunctionType3.fromRef(ref);

  @override
  jni.JObjType get superType => const pdfunction_.$PDFunctionType();

  @override
  final superCount = 2;

  @override
  int get hashCode => ($PDFunctionType3Type).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDFunctionType3Type) &&
        other is $PDFunctionType3Type;
  }
}
