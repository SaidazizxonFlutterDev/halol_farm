abstract class SignUpState {
  SignUpState();
}

class SignUpInitialState extends SignUpState {
  SignUpInitialState();
}

class SignUpValidateState extends SignUpState {
  bool isSignUpFail;
  SignUpValidateState(this.isSignUpFail);
}

class SignUpCompleteState extends SignUpState{
  SignUpCompleteState();
}

class SignUpErrorState extends SignUpState {
  String errMessage;
  SignUpErrorState(this.errMessage);
}