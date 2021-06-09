import 'dart:async';

import 'package:olx/utils/global_locale.dart';

class RegisterValidators {

  final validateEmail =
  StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    String pattern = r"\b([\-]?\d[\-]?){11}\b";
    RegExp regExp = new RegExp(pattern);
    if (email.length>10) {
      sink.add(email);
    }

    else if (!regExp.hasMatch(email)) {
      sink.addError(allTranslations.text('err_email'));

    }else {
      sink.addError(allTranslations.text('err_email'));

    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
        if (password.length > 5) {
          sink.add(password);
        } else {
          sink.addError(allTranslations.text('err_pass'));
        }
      });

  final validateConfirmPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
        if (password.length == 5) {
          sink.add(password);
        } else {
          sink.addError(allTranslations.text('err_pass_confirm'));
        }
      });


  final validateFirstName = StreamTransformer<String, String>.fromHandlers(
      handleData: (firstName, sink) {
        if (firstName.length >= 3) {
          sink.add(firstName);
        }else if(firstName.length==0){
          sink.addError(allTranslations.text('empty_field'));
        }
        else {
          sink.addError(allTranslations.text('err_fname'));
        }
      });
  final validateSeocndName = StreamTransformer<String, String>.fromHandlers(
      handleData: (secondName, sink) {
        if (secondName.length >= 3) {
          sink.add(secondName);
        }else if(secondName.length==0){
          sink.addError(allTranslations.text('empty_field'));
        }


        else {
          sink.addError(allTranslations.text('err_lname'));
        }
      });
  final validateCountry = StreamTransformer<String, String>.fromHandlers(
      handleData: (secondName, sink) {
        if (secondName.length >= 3) {
          sink.add(secondName);
        }else if(secondName.length==0){
          sink.addError(allTranslations.text('empty_field'));
        }


        else {
          sink.addError(allTranslations.text('err_lname'));
        }
      });

}