import 'package:fixmasters_user_app/view/screens/auth_screen/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange, brightness: Brightness.light),
        useMaterial3: false,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold
          ),
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
          // titleSmall: TextStyle(
          //     fontWeight: FontWeight.bold
          // )
        ),
      ),
      home: LoginPage(),
      themeMode: ThemeMode.dark,
    );
  }
}
