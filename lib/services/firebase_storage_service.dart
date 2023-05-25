import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:study_app/firebase_ref/references.dart';

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imageName) async {
    if (imageName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child("question_paper_images")
          .child('${imageName.toLowerCase()}.png');
      var imageUrl = await urlRef.getDownloadURL();

      return imageUrl;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
