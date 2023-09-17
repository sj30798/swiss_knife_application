import 'package:swiss_knife_application/src/applications_list/base_application.dart';

class JsonFormatterApplication extends BaseApplication
{
  const JsonFormatterApplication();

  static const int id = 1;
  static const String title = "JSON formatter";
  static const routeName = "/applications/json_formatter";
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