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

import "common/PDRectangle.dart" as pdrectangle_;

import "common/PDStream.dart" as pdstream_;

import "common/PDMetadata.dart" as pdmetadata_;
import "../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.PDPage
///
/// A page in a PDF document.
///@author Ben Litchfield
class PDPage extends jni.JObject {
  @override
  late final jni.JObjType<PDPage> $type = type;

  PDPage.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $PDPageType();
  static final _new0 =
      jniLookup<ffi.NativeFunction<jni.JniResult Function()>>("PDPage__new0")
          .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new PDPage instance for embedding, with a size of U.S. Letter (8.5 x 11 inches).
  factory PDPage() {
    return PDPage.fromRef(_new0().object);
  }

  static final _new1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__new1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.pdmodel.common.PDRectangle mediaBox)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new instance of PDPage for embedding.
  ///@param mediaBox The MediaBox of the page.
  factory PDPage.new1(
    pdrectangle_.PDRectangle mediaBox,
  ) {
    return PDPage.fromRef(_new1(mediaBox.reference).object);
  }

  static final _new2 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__new2")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(org.apache.pdfbox.cos.COSDictionary pageDictionary)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Creates a new instance of PDPage for reading.
  ///@param pageDictionary A page dictionary in a PDF document.
  factory PDPage.new2(
    jni.JObject pageDictionary,
  ) {
    return PDPage.fromRef(_new2(pageDictionary.reference).object);
  }

  static final _getCOSObject = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getCOSObject")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.cos.COSDictionary getCOSObject()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Convert this standard java object to a COS object.
  ///@return The cos object that matches this Java object.
  jni.JObject getCOSObject() {
    return const jni.JObjectType().fromRef(_getCOSObject(reference).object);
  }

  static final _getContentStreams = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getContentStreams")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Iterator<org.apache.pdfbox.pdmodel.common.PDStream> getContentStreams()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the content streams which make up this page.
  ///@return content stream iterator
  jni.JIterator<pdstream_.PDStream> getContentStreams() {
    return const jni.JIteratorType(pdstream_.$PDStreamType())
        .fromRef(_getContentStreams(reference).object);
  }

  static final _getContents = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getContents")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.io.InputStream getContents()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the content stream(s) of this page as a single input stream.
  ///@return An InputStream, never null. Multiple content streams are concatenated and separated
  /// with a newline. An empty stream is returned if the page doesn't have any content stream.
  ///@throws IOException If the stream could not be read
  jni.JObject getContents() {
    return const jni.JObjectType().fromRef(_getContents(reference).object);
  }

  static final _hasContents = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__hasContents")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public boolean hasContents()
  ///
  /// Returns true if this page has one or more content streams.
  bool hasContents() {
    return _hasContents(reference).boolean;
  }

  static final _getResources = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getResources")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.PDResources getResources()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A dictionary containing any resources required by the page.
  jni.JObject getResources() {
    return const jni.JObjectType().fromRef(_getResources(reference).object);
  }

  static final _setResources = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setResources")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setResources(org.apache.pdfbox.pdmodel.PDResources resources)
  ///
  /// This will set the resources for this page.
  ///@param resources The new resources for this page.
  void setResources(
    jni.JObject resources,
  ) {
    return _setResources(reference, resources.reference).check();
  }

  static final _getStructParents = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getStructParents")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getStructParents()
  ///
  /// This will get the key of this Page in the structural parent tree.
  ///@return the integer key of the page's entry in the structural parent tree or -1 if
  /// there isn't any.
  int getStructParents() {
    return _getStructParents(reference).integer;
  }

  static final _setStructParents = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Int32)>>("PDPage__setStructParents")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setStructParents(int structParents)
  ///
  /// This will set the key for this page in the structural parent tree.
  ///@param structParents The new key for this page.
  void setStructParents(
    int structParents,
  ) {
    return _setStructParents(reference, structParents).check();
  }

  static final _getBBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getBBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getBBox()
  /// The returned object must be released after use, by calling the [release] method.
  pdrectangle_.PDRectangle getBBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getBBox(reference).object);
  }

  static final _getMatrix = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getMatrix")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.util.Matrix getMatrix()
  /// The returned object must be released after use, by calling the [release] method.
  jni.JObject getMatrix() {
    return const jni.JObjectType().fromRef(_getMatrix(reference).object);
  }

  static final _getMediaBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getMediaBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getMediaBox()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A rectangle, expressed in default user space units, defining the boundaries of the physical medium on which the
  /// page is intended to be displayed or printed.
  ///@return the media box.
  pdrectangle_.PDRectangle getMediaBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getMediaBox(reference).object);
  }

  static final _setMediaBox = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setMediaBox")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setMediaBox(org.apache.pdfbox.pdmodel.common.PDRectangle mediaBox)
  ///
  /// This will set the mediaBox for this page.
  ///@param mediaBox The new mediaBox for this page.
  void setMediaBox(
    pdrectangle_.PDRectangle mediaBox,
  ) {
    return _setMediaBox(reference, mediaBox.reference).check();
  }

  static final _getCropBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getCropBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getCropBox()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A rectangle, expressed in default user space units, defining the visible region of default user space. When the
  /// page is displayed or printed, its contents are to be clipped (cropped) to this rectangle.
  ///@return the crop box.
  pdrectangle_.PDRectangle getCropBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getCropBox(reference).object);
  }

  static final _setCropBox = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setCropBox")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setCropBox(org.apache.pdfbox.pdmodel.common.PDRectangle cropBox)
  ///
  /// This will set the CropBox for this page.
  ///@param cropBox The new CropBox for this page.
  void setCropBox(
    pdrectangle_.PDRectangle cropBox,
  ) {
    return _setCropBox(reference, cropBox.reference).check();
  }

  static final _getBleedBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getBleedBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getBleedBox()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A rectangle, expressed in default user space units, defining the region to which the contents
  /// of the page should be clipped when output in a production environment. The default is the
  /// CropBox.
  ///@return The BleedBox attribute.
  pdrectangle_.PDRectangle getBleedBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getBleedBox(reference).object);
  }

  static final _setBleedBox = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setBleedBox")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setBleedBox(org.apache.pdfbox.pdmodel.common.PDRectangle bleedBox)
  ///
  /// This will set the BleedBox for this page.
  ///@param bleedBox The new BleedBox for this page.
  void setBleedBox(
    pdrectangle_.PDRectangle bleedBox,
  ) {
    return _setBleedBox(reference, bleedBox.reference).check();
  }

  static final _getTrimBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getTrimBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getTrimBox()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A rectangle, expressed in default user space units, defining the intended dimensions of the
  /// finished page after trimming. The default is the CropBox.
  ///@return The TrimBox attribute.
  pdrectangle_.PDRectangle getTrimBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getTrimBox(reference).object);
  }

  static final _setTrimBox = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setTrimBox")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setTrimBox(org.apache.pdfbox.pdmodel.common.PDRectangle trimBox)
  ///
  /// This will set the TrimBox for this page.
  ///@param trimBox The new TrimBox for this page.
  void setTrimBox(
    pdrectangle_.PDRectangle trimBox,
  ) {
    return _setTrimBox(reference, trimBox.reference).check();
  }

  static final _getArtBox = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getArtBox")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDRectangle getArtBox()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// A rectangle, expressed in default user space units, defining the extent of the page's
  /// meaningful content (including potential white space) as intended by the page's creator The
  /// default is the CropBox.
  ///@return The ArtBox attribute.
  pdrectangle_.PDRectangle getArtBox() {
    return const pdrectangle_.$PDRectangleType()
        .fromRef(_getArtBox(reference).object);
  }

  static final _setArtBox = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setArtBox")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setArtBox(org.apache.pdfbox.pdmodel.common.PDRectangle artBox)
  ///
  /// This will set the ArtBox for this page.
  ///@param artBox The new ArtBox for this page.
  void setArtBox(
    pdrectangle_.PDRectangle artBox,
  ) {
    return _setArtBox(reference, artBox.reference).check();
  }

  static final _getRotation = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getRotation")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getRotation()
  ///
  /// Returns the rotation angle in degrees by which the page should be rotated
  /// clockwise when displayed or printed. Valid values in a PDF must be a
  /// multiple of 90.
  ///@return The rotation angle in degrees in normalized form (0, 90, 180 or
  /// 270) or 0 if invalid or not set at this level.
  int getRotation() {
    return _getRotation(reference).integer;
  }

  static final _setRotation = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>, ffi.Int32)>>("PDPage__setRotation")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int)>();

  /// from: public void setRotation(int rotation)
  ///
  /// This will set the rotation for this page.
  ///@param rotation The new rotation for this page in degrees.
  void setRotation(
    int rotation,
  ) {
    return _setRotation(reference, rotation).check();
  }

  static final _setContents = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setContents")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setContents(org.apache.pdfbox.pdmodel.common.PDStream contents)
  ///
  /// This will set the contents of this page.
  ///@param contents The new contents of the page.
  void setContents(
    pdstream_.PDStream contents,
  ) {
    return _setContents(reference, contents.reference).check();
  }

  static final _setContents1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setContents1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setContents(java.util.List<org.apache.pdfbox.pdmodel.common.PDStream> contents)
  ///
  /// This will set the contents of this page.
  ///@param contents Array of new contents of the page.
  void setContents1(
    jni.JList<pdstream_.PDStream> contents,
  ) {
    return _setContents1(reference, contents.reference).check();
  }

  static final _getThreadBeads = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getThreadBeads")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<org.apache.pdfbox.pdmodel.interactive.pagenavigation.PDThreadBead> getThreadBeads()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will get a list of PDThreadBead objects, which are article threads in the document. This
  /// will return an empty list if there are no thread beads.
  ///@return A list of article threads on this page, never null. The returned list is backed by
  /// the beads COSArray, so any adding or deleting in this list will change the document too.
  jni.JList<jni.JObject> getThreadBeads() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getThreadBeads(reference).object);
  }

  static final _setThreadBeads = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setThreadBeads")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setThreadBeads(java.util.List<org.apache.pdfbox.pdmodel.interactive.pagenavigation.PDThreadBead> beads)
  ///
  /// This will set the list of thread beads.
  ///@param beads A list of PDThreadBead objects or null.
  void setThreadBeads(
    jni.JList<jni.JObject> beads,
  ) {
    return _setThreadBeads(reference, beads.reference).check();
  }

  static final _getMetadata = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getMetadata")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.common.PDMetadata getMetadata()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the metadata that is part of the document catalog. This will return null if there is
  /// no meta data for this object.
  ///@return The metadata for this object.
  pdmetadata_.PDMetadata getMetadata() {
    return const pdmetadata_.$PDMetadataType()
        .fromRef(_getMetadata(reference).object);
  }

  static final _setMetadata = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setMetadata")
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

  static final _getActions = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getActions")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.interactive.action.PDPageAdditionalActions getActions()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the page actions.
  ///@return The Actions for this Page
  jni.JObject getActions() {
    return const jni.JObjectType().fromRef(_getActions(reference).object);
  }

  static final _setActions = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setActions")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setActions(org.apache.pdfbox.pdmodel.interactive.action.PDPageAdditionalActions actions)
  ///
  /// Set the page actions.
  ///@param actions The actions for the page.
  void setActions(
    jni.JObject actions,
  ) {
    return _setActions(reference, actions.reference).check();
  }

  static final _getTransition = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getTransition")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.interactive.pagenavigation.PDTransition getTransition()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// @return The page transition associated with this page or null if no transition is defined
  jni.JObject getTransition() {
    return const jni.JObjectType().fromRef(_getTransition(reference).object);
  }

  static final _setTransition = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setTransition")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setTransition(org.apache.pdfbox.pdmodel.interactive.pagenavigation.PDTransition transition)
  ///
  /// @param transition The new transition to set on this page.
  void setTransition(
    jni.JObject transition,
  ) {
    return _setTransition(reference, transition.reference).check();
  }

  static final _setTransition1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>, ffi.Float)>>("PDPage__setTransition1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, double)>();

  /// from: public void setTransition(org.apache.pdfbox.pdmodel.interactive.pagenavigation.PDTransition transition, float duration)
  ///
  /// Convenient method to set a transition and the display duration
  ///@param transition The new transition to set on this page.
  ///@param duration The maximum length of time, in seconds, that the page shall be displayed during presentations
  /// before the viewer application shall automatically advance to the next page.
  void setTransition1(
    jni.JObject transition,
    double duration,
  ) {
    return _setTransition1(reference, transition.reference, duration).check();
  }

  static final _getAnnotations = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getAnnotations")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<org.apache.pdfbox.pdmodel.interactive.annotation.PDAnnotation> getAnnotations()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will return a list of the annotations for this page.
  ///@return List of the PDAnnotation objects, never null. The returned list is backed by the
  /// annotations COSArray, so any adding or deleting in this list will change the document too.
  ///@throws IOException If there is an error while creating the annotation list.
  jni.JList<jni.JObject> getAnnotations() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getAnnotations(reference).object);
  }

  static final _getAnnotations1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__getAnnotations1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<org.apache.pdfbox.pdmodel.interactive.annotation.PDAnnotation> getAnnotations(org.apache.pdfbox.pdmodel.interactive.annotation.AnnotationFilter annotationFilter)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will return a list of the annotations for this page.
  ///@param annotationFilter the annotation filter provided allowing to filter out specific annotations
  ///@return List of the PDAnnotation objects, never null. The returned list is backed by the
  /// annotations COSArray, so any adding or deleting in this list will change the document too.
  ///@throws IOException If there is an error while creating the annotation list.
  jni.JList<jni.JObject> getAnnotations1(
    jni.JObject annotationFilter,
  ) {
    return const jni.JListType(jni.JObjectType()).fromRef(
        _getAnnotations1(reference, annotationFilter.reference).object);
  }

  static final _setAnnotations = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setAnnotations")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setAnnotations(java.util.List<org.apache.pdfbox.pdmodel.interactive.annotation.PDAnnotation> annotations)
  ///
  /// This will set the list of annotations.
  ///@param annotations The new list of annotations.
  void setAnnotations(
    jni.JList<jni.JObject> annotations,
  ) {
    return _setAnnotations(reference, annotations.reference).check();
  }

  static final _equals1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__equals1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public boolean equals(java.lang.Object other)
  bool equals1(
    jni.JObject other,
  ) {
    return _equals1(reference, other.reference).boolean;
  }

  static final _hashCode1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__hashCode1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int hashCode()
  int hashCode1() {
    return _hashCode1(reference).integer;
  }

  static final _getResourceCache = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getResourceCache")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public org.apache.pdfbox.pdmodel.ResourceCache getResourceCache()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Returns the resource cache associated with this page, or null if there is none.
  ///@return the resource cache associated to this page.
  jni.JObject getResourceCache() {
    return const jni.JObjectType().fromRef(_getResourceCache(reference).object);
  }

  static final _getViewports = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getViewports")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<org.apache.pdfbox.pdmodel.interactive.measurement.PDViewportDictionary> getViewports()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Get the viewports.
  ///@return a list of viewports or null if there is no /VP entry.
  jni.JList<jni.JObject> getViewports() {
    return const jni.JListType(jni.JObjectType())
        .fromRef(_getViewports(reference).object);
  }

  static final _setViewports = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("PDPage__setViewports")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void setViewports(java.util.List<org.apache.pdfbox.pdmodel.interactive.measurement.PDViewportDictionary> viewports)
  ///
  /// Set the viewports.
  ///@param viewports A list of viewports, or null if the entry is to be deleted.
  void setViewports(
    jni.JList<jni.JObject> viewports,
  ) {
    return _setViewports(reference, viewports.reference).check();
  }

  static final _getUserUnit = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "PDPage__getUserUnit")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public float getUserUnit()
  ///
  /// Get the user unit. This is a positive number that shall give the size of default user space
  /// units, in multiples of 1/72 inch, or 1 if it hasn't been set. This is supported by PDF 1.6
  /// and higher.
  ///@return the user unit.
  double getUserUnit() {
    return _getUserUnit(reference).float;
  }

  static final _setUserUnit = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>, ffi.Float)>>("PDPage__setUserUnit")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, double)>();

  /// from: public void setUserUnit(float userUnit)
  ///
  /// Get the user unit. This is a positive number that shall give the size of default user space
  /// units, in multiples of 1/72 inch. This is supported by PDF 1.6 and higher.
  ///@param userUnit throws IllegalArgumentException if the parameter is not positive.
  void setUserUnit(
    double userUnit,
  ) {
    return _setUserUnit(reference, userUnit).check();
  }
}

final class $PDPageType extends jni.JObjType<PDPage> {
  const $PDPageType();

  @override
  String get signature => r"Lorg/apache/pdfbox/pdmodel/PDPage;";

  @override
  PDPage fromRef(jni.JObjectPtr ref) => PDPage.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($PDPageType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($PDPageType) && other is $PDPageType;
  }
}
