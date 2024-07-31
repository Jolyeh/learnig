import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning/data/models/company/company.dart';
import 'package:learning/features/company/controllers/company_controller.dart';

import '../../../utils/string_validation.dart';

class CompanyFormScreen extends StatelessWidget {
  final CompanyController controller = Get.put(CompanyController());
  CompanyFormScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    Company company = Company(name: "", email: "");
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Form'),
      ),

      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Name')
              ),
              onSaved: (newValue) {
                company.name = newValue;
              },
              validator: (value) {
                return StringValidation.checkInput(value!);
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Email')
              ),
              onSaved: (newValue) {
                company.email = newValue;
              },
              validator: (value) {
                StringValidation.checkInput(value!);
                return StringValidation.checkMail(value!);
              },
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState?.save();
                    controller.saveForm(company);
                  }
                },
                child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
