import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/features/company/components/widget_diviser.dart';
import 'package:learning/features/company/controllers/company_controller.dart';

class CompanyScreen extends StatelessWidget {
  final CompanyController controller = Get.put(CompanyController());
  CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: WidgetDiviser(),
    );
  }
}
