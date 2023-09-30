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

import "ExecutionContext.dart" as executioncontext_;
import "../../../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.function.type4.InstructionSequence
///
/// Represents an instruction sequence, a combination of values, operands and nested procedures.
class InstructionSequence extends jni.JObject {
  @override
  late final jni.JObjType<InstructionSequence> $type = type;

  InstructionSequence.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $InstructionSequenceType();
  static final _new0 = jniLookup<ffi.NativeFunction<jni.JniResult Function()>>(
          "InstructionSequence__new0")
      .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  factory InstructionSequence() {
    return InstructionSequence.fromRef(_new0().object);
  }

  static final _addName = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("InstructionSequence__addName")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void addName(java.lang.String name)
  ///
  /// Add a name (ex. an operator)
  ///@param name the name
  void addName(
    jni.JString name,
  ) {
    return _addName(reference, name.reference).check();
  }

  static final _addInteger = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("InstructionSequence__addInteger")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void addInteger(int value)
  ///
  /// Adds an int value.
  ///@param value the value
  void addInteger(
    int value,
  ) {
    return _addInteger(reference, value).check();
  }

  static final _addReal = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Float)>>("InstructionSequence__addReal")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, double)>();

  /// from: public void addReal(float value)
  ///
  /// Adds a real value.
  ///@param value the value
  void addReal(
    double value,
  ) {
    return _addReal(reference, value).check();
  }

  static final _addBoolean = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Uint8)>>("InstructionSequence__addBoolean")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void addBoolean(boolean value)
  ///
  /// Adds a bool value.
  ///@param value the value
  void addBoolean(
    bool value,
  ) {
    return _addBoolean(reference, value ? 1 : 0).check();
  }

  static final _addProc = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("InstructionSequence__addProc")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void addProc(org.apache.pdfbox.pdmodel.common.function.type4.InstructionSequence child)
  ///
  /// Adds a proc (sub-sequence of instructions).
  ///@param child the child proc
  void addProc(
    InstructionSequence child,
  ) {
    return _addProc(reference, child.reference).check();
  }

  static final _execute = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("InstructionSequence__execute")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void execute(org.apache.pdfbox.pdmodel.common.function.type4.ExecutionContext context)
  ///
  /// Executes the instruction sequence.
  ///@param context the execution context
  void execute(
    executioncontext_.ExecutionContext context,
  ) {
    return _execute(reference, context.reference).check();
  }
}

final class $InstructionSequenceType extends jni.JObjType<InstructionSequence> {
  const $InstructionSequenceType();

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/function/type4/InstructionSequence;";

  @override
  InstructionSequence fromRef(jni.JObjectPtr ref) =>
      InstructionSequence.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($InstructionSequenceType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($InstructionSequenceType) &&
        other is $InstructionSequenceType;
  }
}
