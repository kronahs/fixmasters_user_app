import 'package:fixmasters_user_app/controller/bottom_nav_controller.dart';
import 'package:fixmasters_user_app/view/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController = Get.find();
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: bottomNavigationController.currentIndex.toInt(),
        onTap: (index) {
          bottomNavigationController.changePage(index);
        },
      ),
    );
  }
}
