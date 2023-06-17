import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:study_app/controllers/auth_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();
  Rxn<User?> user = Rxn();

  @override
  void onInit() {
    user.value = Get.find<AuthController>().getUser();
    super.onInit();
  }

  void toogleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void signIn() {}

  void webSite() {
    _launch(Uri(path: "http://www.vedatermis.com"));
  }

  void facebook() {
    _launch(Uri(path: "http://www.vedatermis.com"));
  }

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
