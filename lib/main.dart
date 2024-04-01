import 'package:fixmasters_user_app/bindings/root_bindings.dart';
import 'package:fixmasters_user_app/view/screens/auth_screen/loginPage.dart';
import 'package:fixmasters_user_app/view/screens/auth_screen/signupPage.dart';
import 'package:fixmasters_user_app/view/screens/category_screen/categoryPage.dart';
import 'package:fixmasters_user_app/view/screens/home_screen/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(),transition: Transition.fade),
        GetPage(name: '/login', page: () => LoginPage(),transition: Transition.fadeIn),
        GetPage(name: '/signup', page: () => SignupPage(),transition: Transition.fadeIn),
        GetPage(name: '/category', page: () => CategoryPage(),transition: Transition.rightToLeftWithFade),
      ],
      initialBinding: RootBindings(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange, brightness: Brightness.light),
        useMaterial3: false,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold
          ),
            bodyLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            )
            // titleSmall: TextStyle(
            //     fontWeight: FontWeight.bold
            // )
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange, brightness: Brightness.dark),
        useMaterial3: false,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          )
          // titleSmall: TextStyle(
          //     fontWeight: FontWeight.bold
          // )
        ),
      ),
      home: HomePage(),
      themeMode: ThemeMode.dark,
    );
  }
}
