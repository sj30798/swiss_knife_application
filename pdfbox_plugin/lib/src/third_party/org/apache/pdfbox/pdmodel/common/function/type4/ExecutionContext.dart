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

import "Operators.dart" as operators_;
import "../../../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.function.type4.ExecutionContext
///
/// Makes up the execution context, holding the available operators and the execution stack.
class ExecutionContext extends jni.JObject {
  @override
  late final jni.JObjType<ExecutionContext> $type = type;

  ExecutionContext.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $ExecutionContextType();
  static final _new0 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__new0")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.common.function.type4.Operators operatorSet)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new execution context.
  ///@param operatorSet the operator set
  factory ExecutionContext(
    operators_.Operators operatorSet,
  ) {
    return ExecutionContext.fromRef(_new0(operatorSet.reference).object);
  }

  static final _getStack = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__getStack")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Stack<java.lang.Object> getStack()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the stack used by this execution context.
  ///@return the stack
  jni.JObject getStack() {
    return const jni.JObjectType().fromRef(_getStack(reference).object);
  }

  static final _getOperators = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__getOperators")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.function.type4.Operators getOperators()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the operator set used by this execution context.
  ///@return the operator set
  operators_.Operators getOperators() {
    return const operators_.$OperatorsType()
        .fromRef(_getOperators(reference).object);
  }

  static final _popNumber = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__popNumber")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.Number popNumber()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Pops a number (int or real) from the stack. If it's neither data type, a
  /// ClassCastException is thrown.
  ///@return the number
  jni.JNumber popNumber() {
    return const jni.JNumberType().fromRef(_popNumber(reference).object);
  }

  static final _popInt = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__popInt")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int popInt()
  ///
  /// Pops a value of type int from the stack. If the value is not of type int, a
  /// ClassCastException is thrown.
  ///@return the int value
  int popInt() {
    return _popInt(reference).integer;
  }

  static final _popReal = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "ExecutionContext__popReal")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public float popReal()
  ///
  /// Pops a number from the stack and returns it as a real value. If the value is not of a
  /// numeric type, a ClassCastException is thrown.
  ///@return the real value
  double popReal() {
    return _popReal(reference).float;
  }
}

final class $ExecutionContextType extends jni.JObjType<ExecutionContext> {
  const $ExecutionContextType();

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/function/type4/ExecutionContext;";

  @override
  ExecutionContext fromRef(jni.JObjectPtr ref) => ExecutionContext.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($ExecutionContextType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($ExecutionContextType) &&
        other is $ExecutionContextType;
  }
}
