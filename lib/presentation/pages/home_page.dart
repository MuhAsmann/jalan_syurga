import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jalan_syurga/presentation/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (c) {
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
            child: ListView.separated(
                itemBuilder: (context, i) => Text(c.listUsers[i].name ?? ""),
                separatorBuilder: (_, __) => const SizedBox(
                      height: 8,
                    ),
                itemCount: c.listUsers.length),
          ),
        ),
      );
    });
  }
}
