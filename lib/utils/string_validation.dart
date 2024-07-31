import 'package:email_validator/email_validator.dart';

class StringValidation{

  static String? checkMail(String mail){
    if(EmailValidator.validate(mail)){
      return null;
    }else{
      return "Email invalide";
    }
  }

  static String? checkInput(String value){
    if(value.isEmpty){
      return "Veillez remplir ce champs";
    }else{
      return null;
    }
  }
}