import 'package:flutter/material.dart';
import 'package:swiss_knife_application/src/applications/json_formatter/json_formatter_application.dart';
import 'package:swiss_knife_application/src/applications/pdf_compressor/pdf_compressor_application.dart';
import 'package:swiss_knife_application/src/applications_list/base_application.dart';
import 'package:swiss_knife_application/src/settings/settings_view.dart';

class AllApplicationsListView extends StatelessWidget {
  const AllApplicationsListView({
    super.key,
    this.applications = const [ JsonFormatterApplication() , PdfCompressorApplication() ],
  });

  static const routeName = "/";

  final List<BaseApplication> applications;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All applications'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView.builder(
          restorationId: 'allApplicationsListView',
          itemCount: applications.length,
          itemBuilder: (BuildContext context, int index) {
            final application = applications[index];

            return ListTile(
              title: Text(application.getTitle()),
              leading: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                Navigator.restorablePushNamed(context, application.getRouteName());
              },
            );
          }),
    );
  }
}
