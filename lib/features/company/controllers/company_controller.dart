import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning/data/services/company_service.dart';

import '../../../data/models/company/company.dart';
import '../../../utils/string_validation.dart';

class CompanyController extends GetxController{
  CompanyService _companyService = CompanyService();
  var title = "".obs;
  void updateTitle(){
    title.value = 'Titre';
  }

  void saveForm(Company company){
    _companyService.create(company);
  }
}

