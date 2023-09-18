import 'package:flutter/material.dart';

import 'dart:io';
import 'dart:async';

import 'package:jni/jni.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

Stream<String> files(String dir) => Directory(dir).list().map((e) => e.path);

const jarError = 'No JAR files were found.\n'
    'Run `dart run jnigen:download_maven_jars --config jnigen.yaml` '
    'in plugin directory.\n'
    'Alternatively, regenerate JNI bindings in plugin directory, which will '
    'automatically download the JAR files.';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  if (!Platform.isAndroid) {
    // Assuming application is run from example/ folder
    // It's required to manually provide the JAR files as classpath when
    // spawning the JVM.
    const jarDir = './pdfbox_plugin/mvn_jar/';
    List<String> jars;
    try {
      jars = Directory(jarDir)
          .listSync()
          .map((e) => e.path)
          .where((path) => path.endsWith('.jar'))
          .toList();
    } on OSError catch (_) {
      stderr.writeln(jarError);
      return;
    }
    if (jars.isEmpty) {
      stderr.writeln(jarError);
      return;
    }
    Jni.spawn(classPath: jars);
  }

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}
