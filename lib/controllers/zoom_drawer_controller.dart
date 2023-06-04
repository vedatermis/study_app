import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toogleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void signOut() {}

  void signIn() {}

  void webSite() {}

  void email() {
    final Uri uri = Uri(scheme: 'mailto', path: 'vedatermis@hotmail.com');
    _launch(uri);
  }

  Future<void> _launch(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }
}
