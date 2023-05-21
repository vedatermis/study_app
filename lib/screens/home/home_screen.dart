import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/controllers/question_paper/question_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController questionPaperController = Get.find();
    return Scaffold(
      body: Obx(
        () => ListView.separated(
          itemBuilder: (context, index) {
            debugPrint(questionPaperController.allPaperImages[index]);
            return ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                  image: NetworkImage(
                      questionPaperController.allPaperImages[index]),
                  placeholder:
                      const AssetImage("assets/images/app_splash_logo.png"),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemCount: questionPaperController.allPaperImages.length,
        ),
      ),
    );
  }
}
