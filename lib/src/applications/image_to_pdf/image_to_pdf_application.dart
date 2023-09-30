import 'package:swiss_knife_application/src/applications_list/base_application.dart';

class ImageToPdfApplication extends BaseApplication
{
  const ImageToPdfApplication();

  static const int id = 1;
  static const String title = "Image to PDF";
  static const routeName = "/applications/image_to_pdf";
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