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

import "../../../../../_init.dart";

/// from: org.apache.pdfbox.pdmodel.common.COSDictionaryMap
///
/// This is a Map that will automatically sync the contents to a COSDictionary.
///@author Ben Litchfield
class COSDictionaryMap<$K extends jni.JObject, $V extends jni.JObject>
    extends jni.JObject {
  @override
  late final jni.JObjType<COSDictionaryMap<$K, $V>> $type = type(K, V);

  final jni.JObjType<$K> K;
  final jni.JObjType<$V> V;

  COSDictionaryMap.fromRef(
    this.K,
    this.V,
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static $COSDictionaryMapType<$K, $V>
      type<$K extends jni.JObject, $V extends jni.JObject>(
    jni.JObjType<$K> K,
    jni.JObjType<$V> V,
  ) {
    return $COSDictionaryMapType(
      K,
      V,
    );
  }

  static final _new0 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__new0")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(java.util.Map<K,V> actualsMap, org.apache.pdfbox.cos.COSDictionary dicMap)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// Constructor for this map.
  ///@param actualsMap The map with standard java objects as values.
  ///@param dicMap The map with COSBase objects as values.
  factory COSDictionaryMap(
    jni.JMap<$K, $V> actualsMap,
    jni.JObject dicMap, {
    jni.JObjType<$K>? K,
    jni.JObjType<$V>? V,
  }) {
    K ??= jni.lowestCommonSuperType([
      (actualsMap.$type as jni.JMapType).K,
    ]) as jni.JObjType<$K>;
    V ??= jni.lowestCommonSuperType([
      (actualsMap.$type as jni.JMapType).V,
    ]) as jni.JObjType<$V>;
    return COSDictionaryMap.fromRef(
        K, V, _new0(actualsMap.reference, dicMap.reference).object);
  }

  static final _size = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__size")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int size()
  ///
  /// {@inheritDoc}
  int size() {
    return _size(reference).integer;
  }

  static final _isEmpty = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__isEmpty")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public boolean isEmpty()
  ///
  /// {@inheritDoc}
  bool isEmpty() {
    return _isEmpty(reference).boolean;
  }

  static final _containsKey = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__containsKey")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public boolean containsKey(java.lang.Object key)
  ///
  /// {@inheritDoc}
  bool containsKey(
    jni.JObject key,
  ) {
    return _containsKey(reference, key.reference).boolean;
  }

  static final _containsValue = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__containsValue")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public boolean containsValue(java.lang.Object value)
  ///
  /// {@inheritDoc}
  bool containsValue(
    jni.JObject value,
  ) {
    return _containsValue(reference, value.reference).boolean;
  }

  static final _get0 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__get0")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public V get(java.lang.Object key)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  $V get0(
    jni.JObject key,
  ) {
    return V.fromRef(_get0(reference, key.reference).object);
  }

  static final _put = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__put")
      .asFunction<
          jni.JniResult Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>)>();

  /// from: public V put(K key, V value)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  $V put(
    $K key,
    $V value,
  ) {
    return V.fromRef(_put(reference, key.reference, value.reference).object);
  }

  static final _remove = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__remove")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public V remove(java.lang.Object key)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  $V remove(
    jni.JObject key,
  ) {
    return V.fromRef(_remove(reference, key.reference).object);
  }

  static final _putAll = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__putAll")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public void putAll(java.util.Map<? extends K,? extends V> t)
  ///
  /// {@inheritDoc}
  void putAll(
    jni.JMap<jni.JObject, jni.JObject> t,
  ) {
    return _putAll(reference, t.reference).check();
  }

  static final _clear = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__clear")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void clear()
  ///
  /// {@inheritDoc}
  void clear() {
    return _clear(reference).check();
  }

  static final _keySet = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__keySet")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Set<K> keySet()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JSet<$K> keySet() {
    return jni.JSetType(K).fromRef(_keySet(reference).object);
  }

  static final _values = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__values")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Collection<V> values()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JObject values() {
    return const jni.JObjectType().fromRef(_values(reference).object);
  }

  static final _entrySet = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__entrySet")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Set<java.util.Map.Entry<K,V>> entrySet()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JSet<jni.JObject> entrySet() {
    return const jni.JSetType(jni.JObjectType())
        .fromRef(_entrySet(reference).object);
  }

  static final _equals1 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("COSDictionaryMap__equals1")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public boolean equals(java.lang.Object o)
  ///
  /// {@inheritDoc}
  bool equals1(
    jni.JObject o,
  ) {
    return _equals1(reference, o.reference).boolean;
  }

  static final _toString1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__toString1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String toString()
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// {@inheritDoc}
  jni.JString toString1() {
    return const jni.JStringType().fromRef(_toString1(reference).object);
  }

  static final _hashCode1 = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__hashCode1")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() {
    return _hashCode1(reference).integer;
  }

  static final _convert = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__convert")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: static public org.apache.pdfbox.cos.COSDictionary convert(java.util.Map<java.lang.String,?> someMap)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will take a map&lt;java.lang.String,org.apache.pdfbox.pdmodel.COSObjectable&gt;
  /// and convert it into a COSDictionary.
  ///@param someMap A map containing COSObjectables
  ///@return A proper COSDictionary
  static jni.JObject convert(
    jni.JMap<jni.JString, jni.JObject> someMap,
  ) {
    return const jni.JObjectType().fromRef(_convert(someMap.reference).object);
  }

  static final _convertBasicTypesToMap = jniLookup<
              ffi
              .NativeFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>>(
          "COSDictionaryMap__convertBasicTypesToMap")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: static public org.apache.pdfbox.pdmodel.common.COSDictionaryMap<java.lang.String,java.lang.Object> convertBasicTypesToMap(org.apache.pdfbox.cos.COSDictionary map)
  /// The returned object must be released after use, by calling the [release] method.
  ///
  /// This will take a COS dictionary and convert it into COSDictionaryMap.  All cos
  /// objects will be converted to their primitive form.
  ///@param map The COS mappings.
  ///@return A standard java map.
  ///@throws IOException If there is an error during the conversion.
  static COSDictionaryMap<jni.JString, jni.JObject> convertBasicTypesToMap(
    jni.JObject map,
  ) {
    return const $COSDictionaryMapType(jni.JStringType(), jni.JObjectType())
        .fromRef(_convertBasicTypesToMap(map.reference).object);
  }
}

final class $COSDictionaryMapType<$K extends jni.JObject,
    $V extends jni.JObject> extends jni.JObjType<COSDictionaryMap<$K, $V>> {
  final jni.JObjType<$K> K;
  final jni.JObjType<$V> V;

  const $COSDictionaryMapType(
    this.K,
    this.V,
  );

  @override
  String get signature =>
      r"Lorg/apache/pdfbox/pdmodel/common/COSDictionaryMap;";

  @override
  COSDictionaryMap<$K, $V> fromRef(jni.JObjectPtr ref) =>
      COSDictionaryMap.fromRef(K, V, ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => Object.hash($COSDictionaryMapType, K, V);

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($COSDictionaryMapType<$K, $V>) &&
        other is $COSDictionaryMapType<$K, $V> &&
        K == other.K &&
        V == other.V;
  }
}
