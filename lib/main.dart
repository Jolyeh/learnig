import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/features/company/screens/company_form_screen.dart';
import 'package:learning/features/company/screens/company_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(  GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme()
    ),
    home: CompanyScreen(),
  ));
}

