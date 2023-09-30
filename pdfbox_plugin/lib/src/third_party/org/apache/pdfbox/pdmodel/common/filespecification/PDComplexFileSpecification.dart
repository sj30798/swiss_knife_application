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

import "PDFileSpecification.dart" as pdfilespecification_;

import "PDEmbeddedFile.dart" as pdembeddedfile_;
import "../../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.filespecification.PDComplexFileSpecification
///
/// This represents a file specification.
///@author Ben Litchfield
class PDComplexFileSpecification
    extends pdfilespecification_.PDFileSpecification {
  @override
  late final jni.JObjType<PDComplexFileSpecification> $type = type;

  PDComplexFileSpecification.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDComplexFileSpecificationType();
  static final _new0 = jniLookup<ffi.NativeFunction<jni.JniResult Function()>>(
          "PDComplexFileSpecification__new0")
      .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Default Constructor.
  factory PDComplexFileSpecification() {
    return PDComplexFileSpecification.fromRef(_new0().object);
  }

  static final _new1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__new1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSDictionary dict)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor. Creates empty COSDictionary if dict is null.
  ///@param dict The dictionary that fulfils this file specification.
  factory PDComplexFileSpecification.new1(
    jni.JObject dict,
  ) {
    return PDComplexFileSpecification.fromRef(_new1(dict.reference).object);
  }

  static final _getCOSObject = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getCOSObject")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSDictionary getCOSObject()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Convert this standard java object to a COS object.
  ///@return The cos object that matches this Java object.
  jni.JObject getCOSObject() {
    return const jni.JObjectType().fromRef(_getCOSObject(reference).object);
  }

  static final _getFilename = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFilename")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFilename()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Preferred method for getting the filename.
  /// It will determinate the recommended file name.
  ///
  /// First of all we try to get the unicode filename if it exist.
  /// If it doesn't exist we take a look at the DOS, MAC UNIX filenames.
  /// If no one exist the required F entry will be returned.
  ///
  ///@return The preferred file name.
  jni.JString getFilename() {
    return const jni.JStringType().fromRef(_getFilename(reference).object);
  }

  static final _getFileUnicode = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFileUnicode")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFileUnicode()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the unicode file name.
  ///@return The file name.
  jni.JString getFileUnicode() {
    return const jni.JStringType().fromRef(_getFileUnicode(reference).object);
  }

  static final _setFileUnicode = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFileUnicode")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileUnicode(java.lang.String file)
  ///
  /// This will set the unicode file name. If you call this, then do not forget to also call
  /// \#setFile(java.lang.String) setFile(String) or the attachment will not be visible on
  /// some viewers.
  ///@param file The name of the file.
  void setFileUnicode(
    jni.JString file,
  ) {
    return _setFileUnicode(reference, file.reference).check();
  }

  static final _getFile = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFile")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFile()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the file name.
  ///@return The file name.
  jni.JString getFile() {
    return const jni.JStringType().fromRef(_getFile(reference).object);
  }

  static final _setFile = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFile")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFile(java.lang.String file)
  ///
  /// This will set the file name. You should also call
  /// \#setFileUnicode(java.lang.String) setFileUnicode(String) for cross-platform and
  /// cross-language compatibility.
  ///@param file The name of the file.
  void setFile(
    jni.JString file,
  ) {
    return _setFile(reference, file.reference).check();
  }

  static final _getFileDos = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFileDos")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFileDos()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the name representing a Dos file.
  ///@return The file name.
  jni.JString getFileDos() {
    return const jni.JStringType().fromRef(_getFileDos(reference).object);
  }

  static final _setFileDos = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFileDos")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileDos(java.lang.String file)
  ///
  /// This will set name representing a dos file.
  ///@param file The name of the file.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setFileDos(
    jni.JString file,
  ) {
    return _setFileDos(reference, file.reference).check();
  }

  static final _getFileMac = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFileMac")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFileMac()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the name representing a Mac file.
  ///@return The file name.
  jni.JString getFileMac() {
    return const jni.JStringType().fromRef(_getFileMac(reference).object);
  }

  static final _setFileMac = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFileMac")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileMac(java.lang.String file)
  ///
  /// This will set name representing a Mac file.
  ///@param file The name of the file.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setFileMac(
    jni.JString file,
  ) {
    return _setFileMac(reference, file.reference).check();
  }

  static final _getFileUnix = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFileUnix")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFileUnix()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the name representing a Unix file.
  ///@return The file name.
  jni.JString getFileUnix() {
    return const jni.JStringType().fromRef(_getFileUnix(reference).object);
  }

  static final _setFileUnix = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFileUnix")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileUnix(java.lang.String file)
  ///
  /// This will set name representing a Unix file.
  ///@param file The name of the file.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setFileUnix(
    jni.JString file,
  ) {
    return _setFileUnix(reference, file.reference).check();
  }

  static final _setVolatile = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Uint8)>>("PDComplexFileSpecification__setVolatile")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setVolatile(boolean fileIsVolatile)
  ///
  /// Tell if the underlying file is volatile and should not be cached by the
  /// reader application.  Default: false
  ///@param fileIsVolatile The new value for the volatility of the file.
  void setVolatile(
    bool fileIsVolatile,
  ) {
    return _setVolatile(reference, fileIsVolatile ? 1 : 0).check();
  }

  static final _isVolatile = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__isVolatile")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public boolean isVolatile()
  ///
  /// Get if the file is volatile.  Default: false
  ///@return True if the file is volatile attribute is set.
  bool isVolatile() {
    return _isVolatile(reference).boolean;
  }

  static final _getEmbeddedFile = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getEmbeddedFile")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile getEmbeddedFile()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the embedded file.
  ///@return The embedded file for this file spec.
  pdembeddedfile_.PDEmbeddedFile getEmbeddedFile() {
    return const pdembeddedfile_.$PDEmbeddedFileType()
        .fromRef(_getEmbeddedFile(reference).object);
  }

  static final _setEmbeddedFile = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setEmbeddedFile")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setEmbeddedFile(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile file)
  ///
  /// Set the embedded file for this spec. You should also call
  /// \#setEmbeddedFileUnicode(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile) setEmbeddedFileUnicode(PDEmbeddedFile)
  /// for cross-platform and cross-language compatibility.
  ///@param file The file to be embedded.
  void setEmbeddedFile(
    pdembeddedfile_.PDEmbeddedFile file,
  ) {
    return _setEmbeddedFile(reference, file.reference).check();
  }

  static final _getEmbeddedFileDos = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getEmbeddedFileDos")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile getEmbeddedFileDos()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the embedded dos file.
  ///@return The embedded dos file for this file spec.
  pdembeddedfile_.PDEmbeddedFile getEmbeddedFileDos() {
    return const pdembeddedfile_.$PDEmbeddedFileType()
        .fromRef(_getEmbeddedFileDos(reference).object);
  }

  static final _setEmbeddedFileDos = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setEmbeddedFileDos")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setEmbeddedFileDos(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile file)
  ///
  /// Set the embedded dos file for this spec.
  ///@param file The dos file to be embedded.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setEmbeddedFileDos(
    pdembeddedfile_.PDEmbeddedFile file,
  ) {
    return _setEmbeddedFileDos(reference, file.reference).check();
  }

  static final _getEmbeddedFileMac = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getEmbeddedFileMac")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile getEmbeddedFileMac()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the embedded Mac file.
  ///@return The embedded Mac file for this file spec.
  pdembeddedfile_.PDEmbeddedFile getEmbeddedFileMac() {
    return const pdembeddedfile_.$PDEmbeddedFileType()
        .fromRef(_getEmbeddedFileMac(reference).object);
  }

  static final _setEmbeddedFileMac = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setEmbeddedFileMac")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setEmbeddedFileMac(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile file)
  ///
  /// Set the embedded Mac file for this spec.
  ///@param file The Mac file to be embedded.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setEmbeddedFileMac(
    pdembeddedfile_.PDEmbeddedFile file,
  ) {
    return _setEmbeddedFileMac(reference, file.reference).check();
  }

  static final _getEmbeddedFileUnix = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getEmbeddedFileUnix")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile getEmbeddedFileUnix()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the embedded Unix file.
  ///@return The embedded file for this file spec.
  pdembeddedfile_.PDEmbeddedFile getEmbeddedFileUnix() {
    return const pdembeddedfile_.$PDEmbeddedFileType()
        .fromRef(_getEmbeddedFileUnix(reference).object);
  }

  static final _setEmbeddedFileUnix = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setEmbeddedFileUnix")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setEmbeddedFileUnix(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile file)
  ///
  /// Set the embedded Unix file for this spec.
  ///@param file The Unix file to be embedded.
  ///@deprecated This method is obsolescent and should not be used by conforming writers.
  void setEmbeddedFileUnix(
    pdembeddedfile_.PDEmbeddedFile file,
  ) {
    return _setEmbeddedFileUnix(reference, file.reference).check();
  }

  static final _getEmbeddedFileUnicode = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getEmbeddedFileUnicode")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile getEmbeddedFileUnicode()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the embedded unicode file.
  ///@return The embedded unicode file for this file spec.
  pdembeddedfile_.PDEmbeddedFile getEmbeddedFileUnicode() {
    return const pdembeddedfile_.$PDEmbeddedFileType()
        .fromRef(_getEmbeddedFileUnicode(reference).object);
  }

  static final _setEmbeddedFileUnicode = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setEmbeddedFileUnicode")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setEmbeddedFileUnicode(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile file)
  ///
  /// Set the embedded Unicode file for this spec. If you call this, then do not forget to also
  /// call
  /// \#setEmbeddedFile(org.apache.pdfbox.pdmodel.common.filespecification.PDEmbeddedFile) setEmbeddedFile(PDEmbeddedFile)
  /// or the attachment will not be visible on some viewers.
  ///@param file The Unicode file to be embedded.
  void setEmbeddedFileUnicode(
    pdembeddedfile_.PDEmbeddedFile file,
  ) {
    return _setEmbeddedFileUnicode(reference, file.reference).check();
  }

  static final _setFileDescription = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__setFileDescription")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setFileDescription(java.lang.String description)
  ///
  /// Set the file description.
  ///@param description The file description
  void setFileDescription(
    jni.JString description,
  ) {
    return _setFileDescription(reference, description.reference).check();
  }

  static final _getFileDescription = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDComplexFileSpecification__getFileDescription")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getFileDescription()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get the description.
  ///@return The file description.
  jni.JString getFileDescription() {
    return const jni.JStringType()
        .fromRef(_getFileDescription(reference).object);
  }
}

final class $PDComplexFileSpecificationType
    extends jni.JObjType<PDComplexFileSpecification> {
  const $PDComplexFileSpecificationType();

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;";

  @override
  PDComplexFileSpecification fromRef(jni.JObjectPtr ref) =>
      PDComplexFileSpecification.fromRef(ref);

  @override
  jni.JObjType get superType =>
      const pdfilespecification_.$PDFileSpecificationType();

  @override
  final superCount = 2;

  @override
  int get hashCode => ($PDComplexFileSpecificationType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDComplexFileSpecificationType) &&
        other is $PDComplexFileSpecificationType;
  }
}
