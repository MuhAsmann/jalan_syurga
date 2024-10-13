import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jalan_syurga/core/routers.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: context.mediaQuerySize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routers.home);
                },
                child: const Text("Home"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
