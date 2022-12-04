import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double myKubus = Get.height / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Get.toNamed(Routes.PROFILE),
          child: Hero(
            tag: "aselole",
            child: ClipOval(
              child: Container(
                height: 250,
                width: 250,
                child: Image.network(
                  "https://picsum.photos/500/500",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
