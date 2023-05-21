import 'package:flutter/material.dart';
import 'package:study_app/configs/themes/app_colors.dart';
import 'package:study_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, size: 65),
              const SizedBox(height: 40),
              const Text(
                "This is a study app. You can use it as you want. If you understand how this works, you would be able to scale it. With this you will master firebase backend and flutter frontend.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: onSurfaceTextColor),
              ),
              const SizedBox(height: 40),
              AppCircleButton(
                onTap: () {
                  Get.offAllNamed("/home");
                },
                child: const Icon(Icons.arrow_forward, size: 35),
              )
            ],
          ),
        ),
      ),
    );
  }
}
