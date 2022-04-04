import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halol_farm/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  GlobalKey<FormFieldState> formKey;
  TextEditingController nameController;
  TextEditingController dateController;
  TextEditingController passwordController;

  bool isLoadingFail = false;
  bool isLoading = false;

  SignUpCubit(this.formKey, this.nameController, this.dateController,
      this.passwordController)
      : super(SignUpInitialState());

  void checkValidate(){
    if(formKey.currentState!.validate()){
      emit(SignUpCompleteState());
    }else {
      emit(SignUpErrorState("Xatooo:"));
    }
  }
}
