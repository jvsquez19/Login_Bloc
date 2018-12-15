import 'dart:async';

class Validators {

  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (String email,sink) {
      if(email.contains('@')){
        sink.add(email);
      }
      else{
        sink.addError('Inserte un email valido');
      }
    }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
      handleData: (String password,sink){
        if(password.length > 3){
          sink.add(password);
        }
        else{
          sink.addError('La contraseña debe tener más de 4 caracteres');
        }

      }
      );


}