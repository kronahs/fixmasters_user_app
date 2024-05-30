import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authController.dart';
import '../../../controller/bottom_nav_controller.dart';
import '../../../controller/userController.dart';
import '../../widgets/bottomNav.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final AuthController authController = Get.find();
  final UserController userController = Get.find();

  void signOut() async {
    try {
      await authController.signOut();
    } catch (e) {
      Get.snackbar('Error', 'Cannot Sign out');
    }
  }

  void deleteUser() async {
    try {
      bool deleted = await userController.deleteUser();
      if (deleted) {
        Get.snackbar('Success', 'User account deleted');
        // Navigate to login page after successful deletion
        Get.offAllNamed('/login');
      } else {
        Get.snackbar('Error', 'Failed to delete user account');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to delete user account');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Obx(
                        () {
                      final userData = userController.userData.value;
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            foregroundImage: NetworkImage(
                              userData['profilePic'] ?? '', // Updated to use userData from the controller
                            ),
                          ),
                          Text(
                            userData['fullname'] ?? 'No Name',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: 8),
                          Text(
                            userData['email'] ?? 'No Email',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(height: 8),
                          Text(
                            userData['bio'] ?? 'No bio available',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 20),
                          _buildUserInfoRow(context, Icons.phone, 'Phone', userData['phone_number'] ?? 'No Number'), // Replace with dynamic phone number
                          SizedBox(height: 20),
                          _buildUserInfoRow(context, Icons.location_city, 'Location', userData['location'] ?? 'No Location'), // Replace with dynamic location
                          SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle edit profile button
                  },
                  icon: Icon(Icons.edit),
                  label: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: deleteUser,
                  icon: Icon(Icons.delete),
                  label: Text('Delete Account'),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: signOut,
                  icon: Icon(Icons.logout),
                  label: Text('Sign Out'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: Get.find<BottomNavigationController>().currentIndex.toInt(),
        onTap: (index) {
          Get.find<BottomNavigationController>().changePage(index);
        },
      ),
    );
  }

  Widget _buildUserInfoRow(BuildContext context, IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 5),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
