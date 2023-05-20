import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController {
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  final allPaperImages = <String>[].obs;

  Future<void> getAllPapers() async {
    List<String> imgName = ["biology", "chemistry", "math", "physics"];

    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
