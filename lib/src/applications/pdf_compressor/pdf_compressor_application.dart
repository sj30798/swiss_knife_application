import 'package:swiss_knife_application/src/applications_list/base_application.dart';

class PdfCompressorApplication extends BaseApplication
{
  const PdfCompressorApplication();

  static const int id = 1;
  static const String title = "PDF compressor";
  static const routeName = "/applications/pdf_compressor";
  static const  String applicationIcon = "";

  @override
  int getId()
  {
    return id;
  }

  @override
  String getApplicationIcon()
  {
    return applicationIcon;
  }

  @override
  String getRouteName()
  {
    return routeName;
  }

  @override
  String getTitle()
  {
    return title;
  }
}