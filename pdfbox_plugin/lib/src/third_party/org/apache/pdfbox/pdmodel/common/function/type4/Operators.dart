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

import "Operator.dart" as operator_;
import "../../../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.function.type4.Operators
///
/// This class provides all the supported operators.
class Operators extends jni.JObject {
  @override
  late final jni.JObjType<Operators> $type = type;

  Operators.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $OperatorsType();
  static final _new0 =
      jniLookup<ffi.NativeFunction<jni.JniResult Function()>>("Operators__new0")
          .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new Operators object with the default set of operators.
  factory Operators() {
    return Operators.fromRef(_new0().object);
  }

  static final _getOperator = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("Operators__getOperator")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.function.type4.Operator getOperator(java.lang.String operatorName)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the operator for the given operator name.
  ///@param operatorName the operator name
  ///@return the operator (or null if there's no such operator
  operator_.Operator getOperator(
    jni.JString operatorName,
  ) {
    return const operator_.$OperatorType()
        .fromRef(_getOperator(reference, operatorName.reference).object);
  }
}

final class $OperatorsType extends jni.JObjType<Operators> {
  const $OperatorsType();

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/function/type4/Operators;";

  @override
  Operators fromRef(jni.JObjectPtr ref) => Operators.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($OperatorsType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($OperatorsType) && other is $OperatorsType;
  }
}