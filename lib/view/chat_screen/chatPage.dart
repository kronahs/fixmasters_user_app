import 'package:fixmasters_user_app/controller/bottom_nav_controller.dart';
import 'package:fixmasters_user_app/view/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: Get.find<BottomNavigationController>().currentIndex.toInt(),
        onTap: (index) {
          Get.find<BottomNavigationController>().changePage(index);
        },
      ),
    );
  }
}
