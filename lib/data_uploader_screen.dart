import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/controllers/question_paper/data_uploader.dart';
import 'package:study_app/firebase_ref/loading_status.dart';

class DataUploderScreen extends StatelessWidget {
  DataUploderScreen({super.key});
  final DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
            controller.loadingStatus.value == LoadingStatus.completed
                ? "Upload Completed."
                : "Uploading...")),
      ),
    );
  }
}
